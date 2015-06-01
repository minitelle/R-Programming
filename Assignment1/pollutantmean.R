pollutantmean <- function(directory, pollutant, id = 1:332) {
	##specify the directory where all the observation files exist
	allfiles <- list.files(directory, full.names = T)
	
	## create a data frame will all the files
	data <- data.frame()
	for (i in id){
		data <- rbind(data, read.csv(allfiles[i]))
	}
	## mean p_mean is the pollutant's mean minus the na values
	p_mean <- mean(data[, pollutant], na.rm = T)
	print(p_mean)
}