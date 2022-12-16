#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Roll number from 1 to 1000:
SECRET_NUMBER=$(( $RANDOM % 1000 + 1))

MAIN() {
  NAME_CHECK
  GAME
  INSERT_GAME_ON_DB
}

NAME_CHECK() {
  echo -e "\nEnter your username:"
  read USERNAME

  USER_ID=$($PSQL "SELECT id FROM users WHERE name='$USERNAME'")
  if [[ -z $USER_ID ]]; then
    INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
    USER_ID=$($PSQL "SELECT id FROM users WHERE name='$USERNAME'")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE user_id=$USER_ID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
}

GAME() {
  echo -e "\nGuess the secret number between 1 and 1000:"

  GUESSED=false
  TRIES=0

  while [ "$GUESSED" != "true" ]; do
    ASK_NUMBER
  done
}

ASK_NUMBER() {
  read NUMBER_INPUT
  if ! [[ $NUMBER_INPUT =~ ^[0-9]+$ ]]; then
    echo -e "\nThat is not an integer, guess again:"
    ASK_NUMBER
  fi

  ((TRIES++))
  if [ $SECRET_NUMBER -lt $NUMBER_INPUT ]; then
    echo -e "\nIt's lower than that, guess again:"
    ASK_NUMBER
  elif [ $SECRET_NUMBER -gt $NUMBER_INPUT ]; then
    echo -e "\nIt's higher than that, guess again:"
    ASK_NUMBER
  else
    GUESSED=true
    echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
  fi
}

INSERT_GAME_ON_DB() {
  INSERT_RESULT=$($PSQL "INSERT INTO games(secret_number, tries, user_id) VALUES($SECRET_NUMBER, $TRIES, $USER_ID)")
}

MAIN
