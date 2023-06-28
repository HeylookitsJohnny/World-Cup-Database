#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams,games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != "year" ]]
  then
    #get team_id from winner
    WTEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")

    #if not found
    if [[ -z $WTEAM ]]
    then
      #insert team_id
      INSERT_WTEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WTEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted $WINNER into Teams Table
      fi
      #get new team_id
      WTEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    fi

    #get team_id from opponent
    LTEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    #if not found
    if [[ -z $LTEAM ]]
    then
      #insert team_id
      INSERT_LTEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_LTEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted $OPPONENT into Teams Table
      fi

      #get new team_id
      LTEAM=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    fi

    #Inserting Game info to GAMES table
    INSERT_GAME_RESULTS=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WTEAM, $LTEAM)")
    if [[ $INSERT_GAME_RESULTS == "INSERT 0 1" ]]
    then
      echo Game info inserted into games
    fi

  fi
  
done