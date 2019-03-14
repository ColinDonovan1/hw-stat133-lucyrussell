#2PT Effective Shooting % by Player: 2 PT Field Goal effective shooting percentage by player, arranged in descending order by percentage.
#3PT Effective Shooting % by Player: 3 PT Field Goal effective shooting percentage by player, arranged in descending order by percentage.
#Effective Shooting % by Player: Overall (i.e. including 2PT and 3PT Field Goals) effective shooting percentage by player, arranged in descending order by percentage.

library(dplyr)
gsw_ <- select(shots_data, player_name, shot_type, shot_made_flag)

shots2_andre <- gsw_ %>% filter(player_name == "Andre Iguodala") %>% filter(shot_type == "2PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots2_curry <- gsw_ %>% filter(player_name =="Stephen Curry") %>% filter(shot_type == "2PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots2_klay <- gsw_ %>% filter(player_name == "Klay Thompson") %>% filter(shot_type == "2PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots2_draymond <- gsw_ %>% filter(player_name == "Draymond Green") %>% filter(shot_type == "2PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots2_kevin <- gsw_ %>% filter(player_name == "Kevin Durant") %>% filter(shot_type == "2PT Field Goal") %>% filter(shot_made_flag == "shot_yes")

total2_andre <- gsw_ %>% filter(player_name == "Andre Iguodala") %>% filter(shot_type == "2PT Field Goal")
total2_curry <- gsw_ %>% filter(player_name == "Stephen Curry") %>% filter(shot_type == "2PT Field Goal")
total2_klay <- gsw_ %>% filter(player_name == "Klay Thompson") %>% filter(shot_type == "2PT Field Goal")
total2_draymond <- gsw_ %>% filter(player_name == "Draymond Green") %>% filter(shot_type == "2PT Field Goal")
total2_kevin <- gsw_ %>% filter(player_name == "Kevin Durant") %>% filter(shot_type == "2PT Field Goal")

a <- length(shots2_andre$shot_made_flag)
b <- length(shots2_curry$shot_made_flag)
c <- length(shots2_klay$shot_made_flag)
d <- length(shots2_kevin$shot_made_flag)
e <- length(shots2_draymond$shot_made_flag)

total_a <- length(total2_andre$shot_made_flag)
total_b <- length(total2_curry$shot_made_flag)
total_c <- length(total2_klay$shot_made_flag)
total_d <- length(total2_kevin$shot_made_flag)
total_e <- length(total2_draymond$shot_made_flag)

made <- rbind(a, b, c, d, e)
total <- rbind(total_a, total_b, total_c, total_d, total_e)
percent_made <- made/total*100

shots3_andre <- gsw_ %>% filter(player_name == "Andre Iguodala") %>% filter(shot_type == "3PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots3_curry <- gsw_ %>% filter(player_name =="Stephen Curry") %>% filter(shot_type == "3PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots3_klay <- gsw_ %>% filter(player_name == "Klay Thompson") %>% filter(shot_type == "3PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots3_draymond <- gsw_ %>% filter(player_name == "Draymond Green") %>% filter(shot_type == "3PT Field Goal") %>% filter(shot_made_flag == "shot_yes")
shots3_kevin <- gsw_ %>% filter(player_name == "Kevin Durant") %>% filter(shot_type == "3PT Field Goal") %>% filter(shot_made_flag == "shot_yes")

total3_andre <- gsw_ %>% filter(player_name == "Andre Iguodala") %>% filter(shot_type == "3PT Field Goal")
total3_curry <- gsw_ %>% filter(player_name == "Stephen Curry") %>% filter(shot_type == "3PT Field Goal")
total3_klay <- gsw_ %>% filter(player_name == "Klay Thompson") %>% filter(shot_type == "3PT Field Goal")
total3_draymond <- gsw_ %>% filter(player_name == "Draymond Green") %>% filter(shot_type == "3PT Field Goal")
total3_kevin <- gsw_ %>% filter(player_name == "Kevin Durant") %>% filter(shot_type == "3PT Field Goal")

dim(filter(curry, shot_type == "3PT Field Goal"))[1]

f <- length(shots3_andre$shot_made_flag)
g <- length(shots3_curry$shot_made_flag)
h <- length(shots3_klay$shot_made_flag)
i <- length(shots3_kevin$shot_made_flag)
j <- length(shots3_draymond$shot_made_flag)

total_f <- length(total3_andre$shot_made_flag)
total_g <- length(total3_curry$shot_made_flag)
total_h <- length(total3_klay$shot_made_flag)
total_i <- length(total3_kevin$shot_made_flag)
total_j <- length(total3_draymond$shot_made_flag)

made3 <- rbind(f, g, h, i, j)
total3 <- rbind(total_f, total_g, total_h, total_i, total_j)
percent_made3 <- made3/total3*100

Name <- c("Andre Iguodala", "Stephen Curry", "Klay Thompson", "Kevin Durant", "Draymond Green")

percent_3pt <- cbind.data.frame(Name, total3, made3, percent_made3)
percent_2pt <- cbind.data.frame(Name, total, made, percent_made)
percent_overall <- cbind.data.frame(Name, total3+total, made3+made, (made3+made)/(total3+total)*100)

colnames(percent_2pt) <- c("Name", "Total", "Made", "Percent_Made")
colnames(percent_3pt) <- c("Name", "Total", "Made", "Percent_Made")
colnames(percent_overall) <- c("Name", "Total", "Made", "Percent_Made")

percent_3pt <- arrange(percent_3pt, desc(Percent_Made))
percent_2pt <- arrange(percent_2pt, desc(Percent_Made))
percent_overall <- arrange(percent_overall, desc(Percent_Made))

write.csv(percent_2pt,
            file = "Desktop/stat133/workout01/data/2pt_percent.csv")

write.csv(percent_3pt,
          file = "Desktop/stat133/workout01/data/3pt_percent.csv")

write.csv(percent_overall,
          file = "Desktop/stat133/workout01/data/overall_percent.csv")

