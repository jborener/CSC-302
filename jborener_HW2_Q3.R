df4 = read.csv('D:/New Folder (2)/Rscripts/metabolite.csv', sep = ',', header = TRUE)

sum(df4$Label == "Alzheimer")

library(dplyr)
df4 %>% summarise(across(everything(), ~ sum(is.na(.)))) #method 1 w/dplyr

sapply(df4, function(x) sum(is.na(x))) #method 2 base r

df5 = df4[is.na(df4['Dopamine'])==F,]                                      

df6 = df5[is.na(df5['c4.OH.Pro'])==F,]   #remove NA to calculate Median
median(df6$c4.OH.Pro) #calculate 
df5$c4.OH.Pro[is.na(df5$c4.OH.Pro)] <- 0.199 #replace intended df NA with Value 

