#Create a new column, filled with 0, for each of the 12*7 days
#Add the day names to the dataframe
for (j in 1:(12*7)) {
  capstone[,j+6]=replicate(n=45,0)
  names(capstone)[j+6]=paste0("D",j)
}
#Starting day 1 pain values
capstone[1:45,7]=round(rnorm(mean=8,sd=.5,n=45))
for (j in 2:(12*7)) {
  capstone[1:15,j+6] = round(rnorm(mean=8,sd=.25,n=15))
  capstone[16:45,j+6] = round(rnorm(mean=8.06024-.06024*j,sd=.25,n=30))
}