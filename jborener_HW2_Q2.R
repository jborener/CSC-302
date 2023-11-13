df = read.csv('D:/New Folder (2)/Rscripts/WorldCupMatches.csv', sep = ',', header = TRUE)

nrow(df) #number of rows
ncol(df) # number of columns

summary(df) #summary

length(unique(df$City)) #number of unique cities

df2 = df[is.na(df['Attendance'])==F,] # remove NA's
mean(df2$Attendance) #Calculate Mean/Avg

aggregate(df$Home.Team.Goals, by=list(df$Home.Team.Name), FUN=sum) #total goals for each team

aggregate(df2$Attendance, by=list(df2$Year), FUN=mean) # avg attendees each year

