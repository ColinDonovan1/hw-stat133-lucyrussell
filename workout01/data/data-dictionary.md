#hw-stat133-lucyrussell

**team_name**: the name of the team, which is in this case is the Golden State Warriors for all data. This data is composed of character objects.

**game_date**: the month/day/year that the game took place. The data is composed of character objects.

**season**: the year of the season that the game took place in, which is 2016 for all data. This data is numerical.

**period**: the period of the game in which the shot was taken. There are four periods in a game, each one designated by a number 1-4. This data is numerical.

**minutes_remaining**: the number of minutes remaining in the period in which the shot was taken. There are 12 minutes in a period, and thus the minutes_remaining is between 0-11. The data is in integer form.

**seconds_remaining**: the number of seconds left in the minute of the period of the shot taken. There are 60 seconds in a minute, and thus can range from 0-59. The data is in integer form.

**shot_made_flag**: this indicates whether or not the shot was made successfully: "shot_yes" for a successful shot, and "shot_no" for an unsuccessful shot. The data is in factor form.

**action_type**: this indicates the type of shot taken. There are 46 different types of shot possible. The data is in factor form.

**shot_type**: this indicates whether the shot was within the 2-point area, or the 3-point area. Shots taken within the 2-point area are awarded 2 points if successful, and shots taken within the 3-point area are awarded 3 points if successful. The data is factor form.

**shot_distance**: this indicates the distance from which the shot was taken, ranging from 0-71. The distance is measured in feet. This is measured in  The data is numberical.

**opponent**: the team against which the Golden State Warriors played. There are 31 opponents. The data is composed of character objects.

**x**: this indicates the x-coordinate of the shot, based on the NBA court. The data is numerical.

**y**: this indicates the y-coordinate of the shot, based on the NBA court. The data is numerical.

*Note: The combination of "x" and "y" gives the location of the player on the court at the time of the shot.*

**player_name**: this indicates the name of the player who took the associated shot. There are 5 players whose names are included: Draymond Green, Stephen Curry, Klay Thompson, Kevin Durant, and Andre Iguodala. The data is composed of character objects.

**minute**: this indicates the minute in the game in which the shot was taken. This  The data is numerical.
The values in "minute" were obtained by the following calculation:

(12)*("period") - ("minutes_remaining")

