rm(list=ls())

#please preread Ch3.4

# input data
data_i=iris

## 1. basic plot
# scatter plot
plot(DO)

# for paper print
plot(DO)

#add line 
# 我們也可以畫出回歸趨勢線
lm.model <- lm(DO)    # 建立一個線性回歸
# 畫上回歸的趨勢線
abline(DO)     # lwd 代表線的粗細

#add curve
M.Loess <- loess(DO)
Fit <- fitted(DO)
Ord1 <- order(DO)
lines(DO)

# Advanced scatter plot
plot(DO)
plot(data[DO])

# function plot
plot(sin, DO)

#hist
hist(DO)

#提示hist(x, breaks = "Sturges",
#     freq = NULL, probability = !freq,
#     include.lowest = TRUE, right = TRUE,
#     density = NULL, angle = 45, col = NULL, border = NULL,
#     main = paste("Histogram of" , xname),
#     xlim = range(breaks), ylim = NULL,
#     xlab = xname, ylab,
#     axes = TRUE, plot = TRUE, labels = FALSE,
#     nclass = NULL, warn.unused = TRUE, ...)

#boxplot
boxplot(data_i[DO])
boxplot(DO, data_i)

#最大值區間：Q3 + 1.5 * (Q3-Q1)，以橫線表示
#上四分位數Q3：以內箱上限表示
#中位數：以內箱中的黑粗線表示
#下四分位數Q1：以內箱下限表示
#最小值區間：Q1 – 1.5 * (Q3-Q1)，以橫線表示
#離群值：超過最大值區間或最小值區間的樣本，以圈圈表示

# output
png(DO)
dev.off() 

# homework
# 1.請讀入titatic_csv.csv檔案，並畫出艙等的直方圖。
# 2.請畫出花瓣（petal）長寬的散點圖，並加上趨勢線。並說明趨勢線是用來做什麼的？
# 3.請畫出性別與艙等的plot圖。比較與iris有什麼不同？為什麼？
# 4.讀取你自己的datasheet，並探索如何呈現最好，並做一張圖。
# 5.(加分題）探索使用ggplot，並做一張圖。
