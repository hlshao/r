rm(list = ls())

#must read
#酌定子女親權之重要因素：以決策樹方法分析相關裁判 
#黃詩淳 ; 邵軒磊 
#國立臺灣大學法學論叢 47:1 2018.03[民107.03] 頁299-344

dt=iris

## way 1. Making a Decision-Tree
# target classification 
dt$Species=as.factor(dt$Species)

# sampling
n.test=DO
set.seed(888)
train =DO
trainset=DO
testset=DO

# now, let's make tree.
library(party)

iris_tree=DO

# Seesee what you did.
plot(DO, main="YOUR NAME")

## way 2, explain it, and make it useful. 
# make "prediction". 

prediction=predict(DO)

# look if it is right.
testfull=dt[-train,]
Compare = cbind(DO)
head(Compare)

confMat = DO
confMat
accuracy = DO
accuracy


#homework
# 1.請用不同的SEED畫出iris的分類決策樹，記錄下來有什麼不同？為什麼？
# 2.請讀入titatic_csv.csv檔案，並畫出「獲救」的決策樹。
# 3.讀取你自己的datasheet，做一張圖。並探索如何能夠讓accuracy最高。
# 4.(加分題）有沒有可能大量重複作業3，找出一個「最好的表現」？如何做？

## homework2
#do yourself data
