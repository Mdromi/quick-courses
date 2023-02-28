<?php
include 'connect.php';

$id=$_GET['updateId'];
$sql="Select * from `crud` where id=$id";
$result=mysqli_query($con, $sql);
$row=mysqli_fetch_assoc($result);
$name=$row['name'];
$email=$row['email'];
$mobile=$row['mobile'];
$password=$row['password'];

if(isset($_POST['submit'])) {
  $name = $_POST['name'];
  $email= $_POST['email'];
  $mobile= $_POST['mobile'];
  $password= $_POST['password'];

  $sql = "update `crud` set id=$id, name='$name', email='$email', mobile='$mobile', password='$password' where id=$id";

  $result=mysqli_query($con,$sql);

  if($result) {
    // echo 'Updated successfully';
    header('location:display.php');
  } else {
    die(mysqli_error($con));
  }
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CRUD operation With PHP</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container" my-5>
      <form method="post">
        <div class="mb-3">
          <label for="name" class="form-label">Name</label>
          <input
            type="name"
            class="form-control"
            id="name"
            name="name"
            aria-describedby="emailHelp"
            placeholder="Enter your name"
            autocomplete="off"
            value=<?php echo $name; ?>
          />
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input
            type="text"
            class="form-control"
            id="email"
            name="email"
            aria-describedby="emailHelp"
            placeholder="Enter your email"
            autocomplete="off"
            value=<?php echo $email; ?>
          />
        </div>
        <div class="mb-3">
          <label for="mobile" class="form-label">Mobile</label>
          <input
            type="text"
            class="form-control"
            id="mobile"
            name="mobile"
            aria-describedby="emailHelp"
            placeholder="Enter your mobile number"
            autocomplete="off"
            value=<?php echo $mobile; ?>
          />
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input
            type="text"
            class="form-control"
            id="password"
            name="password"
            aria-describedby="emailHelp"
            placeholder="Enter your password"
            value=<?php echo $password; ?>
          />
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Update</button>
      </form>
    </div>

  </body>
</html>
