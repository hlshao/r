# refeash data zone
rm(list = ls())

#please preview ch 1~2 basically

# way 1, read from database 
data=iris

# way 2, read from CSV (Comma-Separated Values)
data_csv=read.csv(DO)

# way 3, read from xlsx
## 請跳過第一種方法 library(xlsx)
## 請跳過第一種方法 data_xlsx=read.xlsx("iris.xlsx",sheetIndex = 1)
# 請從這裡繼續

# way 3-1, read from xlsx
library(readxl)
data_xlsx2=DO

#提示 read_xlsx(path, sheet = NULL, range = NULL, col_names = TRUE,
#          col_types = NULL, na = "", trim_ws = TRUE, skip = 0, n_max = Inf,
#          guess_max = min(1000, n_max))

#output
write.csv(DO)

# DO homework
# 1.請讀入titatic_csv.csv檔案，設為data_t並截圖r_table。
# 2.請取出第300位乘客的資料。
# 3.請取出第1380號到1384號的性別。
# 4.（加分題）有多少男性？女性？
# 5.（加分題）有多少男性（女性）生/死？
# 6.（加分題）性別與生死有無關係？

# homework 2
# make yourself datasheet

