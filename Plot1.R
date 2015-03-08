data= read.table("household_power_consumption.txt", header=T, sep=";", dec=".",stringsAsFactors=FALSE)
dim(data)
sub= data[data$Date %in% c("1/2/2007","2/2/2007"),]
dim(sub)
class(sub$Global_active_power)
power=as.numeric(sub$Global_active_power)
png("assignmnent//plot1.png", width=480, height=480)
hist(power, xlab="Global Active Power(kilowatt)", ylab="Frequency", main="Global Active Power", col="red")
dev.off()