# Get input from the user
num <- as.integer(readline("Enter a number: "))

armstrong_number <- function(num) {
  # Calculate the number of digits
  digits <- floor(log10(num)) + 1
  
  # Initialize sum
  sum <- 0
  
  # Iterate through each digit
  temp <- num
  while (temp > 0) {
    digit <- temp %% 10
    sum <- sum + digit^digits
    temp <- floor(temp / 10)
  }
  
  # Check if the sum is equal to the original number
  if (sum == num) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}


# Check if the number is an Armstrong number
if (armstrong_number(num)) {
  print(paste(num, "is an Armstrong number."))
} else {
  print(paste(num, "is not an Armstrong number."))
}
