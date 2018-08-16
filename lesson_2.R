rm(list=ls())

#please preread Ch3.4

# input data
data_i=iris

## 1. basic plot
# scatter plot
plot(data_i$Sepal.Length,data_i$Sepal.Width)
plot(data_i$Sepal.Length,data_i$Sepal.Width,col="red")
plot(data_i$Sepal.Length,data_i$Sepal.Width,col=data_i$Species)
plot(data_i$Sepal.Length,data_i$Sepal.Width,pch=as.numeric(data_i$Species))
# for paper print
plot(data_i$Sepal.Length,data_i$Sepal.Width,col=data_i$Species,main="花萼長寬比")
plot(data_i$Sepal.Length,data_i$Sepal.Width,type="l")

?plot

#add line 
# 我們也可以畫出回歸趨勢線
lm.model <- lm(Sepal.Width ~ Sepal.Length, data_i)    # 建立一個線性回歸
# 畫上回歸的趨勢線
abline(lm.model,lwd=2)     # lwd 代表線的粗細

#add curve
M.Loess <- loess(Sepal.Width ~ Sepal.Length, data = data_i)
Fit <- fitted(M.Loess)
Ord1 <- order(data_i$Sepal.Length)
lines(data_i$Sepal.Length[Ord1], Fit[Ord1],
      lwd = 3, lty = 2)

# Advanced scatter plot
plot(data)
plot(data[1:4])

# function plot
plot(sin, -pi, 2*pi)

#hist
hist(data_t$Sepal.Length)
hist(data_t$Sepal.Length,breaks = 50)
#hist(x, breaks = "Sturges",
#     freq = NULL, probability = !freq,
#     include.lowest = TRUE, right = TRUE,
#     density = NULL, angle = 45, col = NULL, border = NULL,
#     main = paste("Histogram of" , xname),
#     xlim = range(breaks), ylim = NULL,
#     xlab = xname, ylab,
#     axes = TRUE, plot = TRUE, labels = FALSE,
#     nclass = NULL, warn.unused = TRUE, ...)

#boxplot
boxplot(data_i[1:4])
boxplot(Sepal.Length ~ Species, data_i)
#最大值區間：Q3 + 1.5 * (Q3-Q1)，以橫線表示
#上四分位數Q3：以內箱上限表示
#中位數：以內箱中的黑粗線表示
#下四分位數Q1：以內箱下限表示
#最小值區間：Q1 – 1.5 * (Q3-Q1)，以橫線表示
#離群值：超過最大值區間或最小值區間的樣本，以圈圈表示

# output
png("boxplot.png", width=600, height=600)
dev.off() 

#homework
# 1.請讀入titatic_csv.csv檔案，並畫出艙等的直方圖。
# 2.請畫出性別與艙等的plot圖。比較與iris有什麼不同？為什麼？
# 3.讀取你自己的datasheet，並探索如何呈現最好，並做一張圖。
# 4.(加分題）探索使用ggplot，並做一張圖。
