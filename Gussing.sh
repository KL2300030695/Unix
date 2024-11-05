
target=$((RANDOM % 100 + 1))
attempts=0
echo "Welcome to the Number Guessing Game!"
echo "Try to guess the number (between 1 and 100)."

while true; do
  read -p "Enter your guess: " guess
  attempts=$((attempts + 1))
  
  # Check if the guess is correct
  if [[ $guess -eq $target ]]; then
    echo "Congratulations! You guessed the correct number in $attempts attempts."
    break
  elif [[ $guess -lt $target ]]; then
    echo "Too low! Try again."
  else
    echo "Too high! Try again."
  fi
done
