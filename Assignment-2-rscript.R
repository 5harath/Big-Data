dji <- read.table("E:/dow_jones_index/dow_jones_index.data", header = TRUE)
ibm_stock = subset(df, stock=='IBM')
nrow(ibm_Stock)
mean(ibm_stock$close)
sd(ibm_stock$close)
ibm_stock$diff <- ibm_stock3$open - ibm_stock3$close
min <- ibm_stock3$diff[which.min(ibm_stock3$diff)]
ibm_stock3$rdiff <- ibm_stock3$diff - min
plot(ibm_stock3$percent_return_next_dividend, ibm_stock3$rdiff, main = "Diffrence in price vs Percentage return next divident", ylab = "Difference in price", xlab = "Percentage return next divident")
gives = lm(ibm_stock3$percent_return_next_dividend~ibm_stock3$rdiff, data = newd)
summary(gives)
plot(df$volume,df$close,col = "red", xlab = "volume", ylab = "close", main = "Volume vs Close")
hist(ibm_stock3$diff, xlab = "Change in stock price", main = "Chart of change in stock price")
data <- data.frame(ibm_stock3$open,ibm_stock3$high,ibm_stock3$low,ibm_stock3$close)
boxplot(data)
