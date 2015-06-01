


complete <- function(directory, id = 1:332) {
	##specify the directory where all the observation files exist
	allfiles <- list.files(directory, full.names = T)
	
	##create a numeric vector for 
	nobs <- numeric()

	for (i in id){
		## read the files	
		frame <- read.csv(allfiles[i])
		## sum total of complete cases
		nobs <- c(nobs, sum(complete.cases(frame)))
		}
	# print data frame with ID and number of observations
	data.frame(id, nobs)
}