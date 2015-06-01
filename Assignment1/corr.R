corr <- function(directory, threashold = 0){
	
	##specify the directory where all the observation files exist
	allfiles <- list.files(directory, full.names = T)
	cor_sn <- c()
	
	for (i in 1:length(allfiles)){
		
		data <- read.csv(allfiles[i])
		cdata <- data[complete.cases(data), ]
		
		## verify condition threash
		if (nrow(cdata) > threashold){
		
		## pass correlation
		cor_sn <- c(cor_sn, cor(cdata$sulfate, cdata$nitrate))

		}
	}
	## return correlation value
	return(cor_sn)
}