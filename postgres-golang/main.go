package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"

	"github.com/gorilla/mux"
	"github.com/joho/godotenv"
	"github.com/pkg/errors"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

type Person struct {
	gorm.Model

	Name  string
	Email string `gorm:"type:varchar(100);uniqueIndex"`
	Books []Book
}

type Book struct {
	gorm.Model

	Title      string
	Author     string
	CallNumber int `gorm:"uniqueIndex"`
	PersonID   int
}

var (
	person = &Person{Name: "Jack", Email: "jack2@gmail.com"}
	books  = []Book{
		{Title: "Book 11", Author: "Author 1", CallNumber: 343, PersonID: 1},
		{Title: "Book 22", Author: "Author 2", CallNumber: 3234, PersonID: 1},
		{Title: "Book 33", Author: "Author 3", CallNumber: 12653422, PersonID: 1},
	}
)

var db *gorm.DB
var err error

func main() {
	// Load environment variables from .env file
	err = godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file:", err)
	}

	// Loading environment variables
	dialect := os.Getenv("DIALECT")
	host := os.Getenv("HOST")
	dbPort := os.Getenv("DBPORT")
	user := os.Getenv("USER")
	dbName := os.Getenv("NAME")
	password := os.Getenv("PASSWORD")

	// Database connection string
	dbURI := fmt.Sprintf("host=%s user=%s dbname=%s sslmode=disable password=%s port=%s", host, user, dbName, password, dbPort)

	fmt.Println(dialect)

	// Opening connection to the database
	db, err = gorm.Open(postgres.Open(dbURI))
	if err != nil {
		log.Fatal(err)
	} else {
		fmt.Println("Successfully connected to the database")
	}

	// Close connection to the database when the function finishes
	sqlDB, err := db.DB()
	if err != nil {
		log.Fatal(err)
	}
	defer sqlDB.Close()

	// Perform migrations
	err = db.AutoMigrate(&Person{}, &Book{})
	if err != nil {
		log.Fatal(err)
	}

	// Create or update the person and their books
	// err = createOrUpdatePersonWithBooks(db, person, books)
	if err != nil {
		log.Fatal(err)
	}

	// API routers
	router := mux.NewRouter()

	router.HandleFunc("/people", getPeople).Methods("GET")
	router.HandleFunc("/person/{id}", getPerson).Methods("GET")
	router.HandleFunc("/books", getBooks).Methods("GET")
	router.HandleFunc("/books/{id}", getSingleBook).Methods("GET")

	router.HandleFunc("/create/person", createPerson).Methods("POST")
	router.HandleFunc("/create/book", createBook).Methods("POST")
	router.HandleFunc("/delete/person/{id}", deletePerson).Methods("DELETE")
	router.HandleFunc("/delete/book/{id}", deleteBook).Methods("DELETE")

	// Start the HTTP server
	log.Fatal(http.ListenAndServe(":8080", router))
}

// getSingleBook retrieves a single book from the database based on the given ID
func getSingleBook(w http.ResponseWriter, r *http.Request) {
	// Get the book ID from the request parameters
	vars := mux.Vars(r)
	id := vars["id"]

	// Convert the ID string to an integer
	bookID, err := strconv.Atoi(id)
	if err != nil {
		http.Error(w, "Invalid book ID", http.StatusBadRequest)
		return
	}

	// Query the book with the given ID from the database
	var book Book
	err = db.First(&book, bookID).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			http.Error(w, "Book not found", http.StatusNotFound)
		} else {
			http.Error(w, "Error querying book", http.StatusInternalServerError)
		}
		return
	}

	// Marshal the book object to JSON
	bookJSON, err := json.Marshal(book)
	if err != nil {
		http.Error(w, "Error encoding JSON", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.Write(bookJSON)
}

// createBook creates a new book based on JSON data
func createBook(w http.ResponseWriter, r *http.Request) {
	// Decode the JSON data into a Book object
	var book Book
	err := json.NewDecoder(r.Body).Decode(&book)
	if err != nil {
		http.Error(w, "Invalid JSON data", http.StatusBadRequest)
		return
	}

	// Create the book record in the database
	err = db.Create(&book).Error
	if err != nil {
		http.Error(w, "Error creating book", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusCreated)
}

// deleteBook deletes a book from the database based on the given ID
func deleteBook(w http.ResponseWriter, r *http.Request) {
	// Get the book ID from the request parameters
	vars := mux.Vars(r)
	id := vars["id"]

	// Convert the ID string to an integer
	bookID, err := strconv.Atoi(id)
	if err != nil {
		http.Error(w, "Invalid book ID", http.StatusBadRequest)
		return
	}

	// Delete the book with the given ID from the database
	err = db.Delete(&Book{}, bookID).Error
	if err != nil {
		http.Error(w, "Error deleting book", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
}

// getBooks retrieves all books from the database
func getBooks(w http.ResponseWriter, r *http.Request) {
	// Retrieve the list of books from the database
	var books []Book
	if err := db.Find(&books).Error; err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// Convert the books slice to JSON
	jsonData, err := json.Marshal(books)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// Set the response headers
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	// Write the JSON response
	_, err = w.Write(jsonData)
	if err != nil {
		log.Println(err)
	}
}

// deletePerson deletes a person with the given ID
func deletePerson(w http.ResponseWriter, r *http.Request) {
	// Get the person ID from the request parameters
	vars := mux.Vars(r)
	id := vars["id"]

	// Convert the ID string to an integer
	personID, err := strconv.Atoi(id)
	if err != nil {
		http.Error(w, "Invalid person ID", http.StatusBadRequest)
		return
	}

	// Delete the person from the database
	err = db.Delete(&Person{}, personID).Error
	if err != nil {
		http.Error(w, "Error deleting person", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
}

// createPerson creates a new person based on JSON data
func createPerson(w http.ResponseWriter, r *http.Request) {
	// Decode the JSON data into a Person object
	var person Person
	err := json.NewDecoder(r.Body).Decode(&person)
	if err != nil {
		http.Error(w, "Invalid JSON data", http.StatusBadRequest)
		return
	}

	// Create the person record in the database
	err = db.Create(&person).Error
	if err != nil {
		http.Error(w, "Error creating person", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusCreated)
	// w.Write({"message": "userCreated"})
}

// getPerson retrieves a person along with their associated books
func getPerson(w http.ResponseWriter, r *http.Request) {
	// Get the person ID from the request parameters
	vars := mux.Vars(r)
	id := vars["id"]

	// Convert the ID string to an integer
	personID, err := strconv.Atoi(id)
	if err != nil {
		http.Error(w, "Invalid person ID", http.StatusBadRequest)
		return
	}

	// Query the person with the given ID from the database
	var person Person
	err = db.Preload("Books").First(&person, personID).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			http.Error(w, "Person not found", http.StatusNotFound)
		} else {
			http.Error(w, "Error querying person", http.StatusInternalServerError)
		}
		return
	}

	// Marshal the person object to JSON
	personJSON, err := json.Marshal(person)
	if err != nil {
		http.Error(w, "Error encoding JSON", http.StatusInternalServerError)
		return
	}

	// Set the Content-Type header and write the response
	w.Header().Set("Content-Type", "application/json")
	w.Write(personJSON)
}

// getPeople retrieves a list of people from the database
func getPeople(w http.ResponseWriter, r *http.Request) {
	// Retrieve the list of people from the database
	var people []Person
	if err := db.Find(&people).Error; err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// Convert the people slice to JSON
	jsonData, err := json.Marshal(people)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// Set the response headers
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)

	// Write the JSON response
	_, err = w.Write(jsonData)
	if err != nil {
		log.Println(err)
	}
}

// createOrUpdatePersonWithBooks creates or updates a person along with their books
func createOrUpdatePersonWithBooks(db *gorm.DB, person *Person, books []Book) error {
	// Check if the person with the given email already exists
	var existingPerson Person
	if err := db.Where("email = ?", person.Email).First(&existingPerson).Error; err != nil {
		if !errors.Is(err, gorm.ErrRecordNotFound) {
			return errors.Wrap(err, "Error querying person")
			log.Fatal(errors.Wrap(err, "Error querying person"))
		}

		// Create the person record if it doesn't exist
		if err := db.Create(person).Error; err != nil {
			return err
			log.Fatal(err)
		}
	} else {
		person = &existingPerson
	}

	// Create the books associated with the person
	for idx := range books {
		books[idx].PersonID = int(person.ID)
		if err := db.Create(&books[idx]).Error; err != nil {
			return errors.Wrap(err, "Error creating book")
			log.Fatal(errors.Wrap(err, "Error creating book"))
		}
	}

	fmt.Println("Database operations completed successfully")

	return nil
}
