# Script for starting the game
# To be run in the root of the build tree
# No jar files used

if [ "$#" -ne 6 ]; then
  echo
  echo "Usage:"
  echo "sh $0 <name_of_zone_file> <name_of_allied_players_file> <name_of_axis_players_file> <number_of_tickets_at_start> <max_time_of_game> <number_of_games>"
  echo "<number_of_tickets_at_start> / <max_time_of_game> / <number_of_games>: Positive integer"
  echo "<name_of_zone_file>: Name of file to use for zone positions, which should be in zones folder"
  echo "<name_of_allied_players_file> / <name_of_axis_players_file>: Name of file to use for axis and allied players classes, which should be in players folder"
  echo
  exit 1;
fi

# execute main in new terminal
export DISPLAY=:0.0
java -classpath ./out:./lib/jade.jar Main "$1" "$2" "$3" "$4" "$5" "$6"
