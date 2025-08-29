
setwd("C:\\Users\\it24102231\\Desktop\\IT24102231")


Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)


head(Delivery_Times)
str(Delivery_Times)


names(Delivery_Times) <- "Delivery_Time"


attach(Delivery_Times)

histogram <- hist(Delivery_Time, 
                  main = "Histogram of Delivery Times", 
                  xlab = "Delivery Time (minutes)",
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE,
                  col = "lightblue")


breaks <- round(histogram$breaks)
freq <- histogram$counts
cum_freq <- cumsum(freq)


new <- c(0, cum_freq)  


plot(breaks, new, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     ylim = c(0, max(new)),
     col = "blue", 
     lwd = 2)

points(breaks, new, pch = 16, col = "blue")


grid()


cumulative_table <- cbind(Upper_Limit = breaks, Cumulative_Frequency = new)
print("Cumulative Frequency Table:")
print(cumulative_table)


detach(Delivery_Times)