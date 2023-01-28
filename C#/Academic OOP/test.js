let 
  i,
  j, n = 100;


for (i = 2; i <= n; i++) {
    let ctr = 0
  for (j = 2; j < i; j++) {
    if (i % j == 0) {
      ctr++;
      break;
    }
  }
  if (ctr == 0) {
    console.log(i);
  }
}
