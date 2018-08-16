# refeash data zone
rm(list = ls())

#please preview ch 1~2 basically

# way 1, read from database 
data=iris

# way 2, read from CSV (Comma-Separated Values)
data_csv=read.csv("iris_csv.csv",sep = ",",header = T)

#read.table(file, header = FALSE, sep = "", quote = "\"'",
#           dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
#           row.names, col.names, as.is = !stringsAsFactors,
#           na.strings = "NA", colClasses = NA, nrows = -1,
#           skip = 0, check.names = TRUE, fill = !blank.lines.skip,
#           strip.white = FALSE, blank.lines.skip = TRUE,
#           comment.char = "#",
#           allowEscapes = FALSE, flush = FALSE,
#           stringsAsFactors = default.stringsAsFactors(),
#           fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)

# way 3, read from xlsx
## install.packages("xlsx")
# options(java.home="C:\\Program Files\\Java\\jdk1.8.0_91\\jre")
library(xlsx)
data_xlsx=read.xlsx("iris.xlsx",sheetIndex = 1)

#read.xlsx(file, sheetIndex, sheetName=NULL, rowIndex=NULL,
#            startRow=NULL, endRow=NULL, colIndex=NULL,
#            as.data.frame=TRUE, header=TRUE, colClasses=NA,
#            keepFormulas=FALSE, encoding="unknown", password=NULL, ...)

# way 3-1, read from xlsx
library(readxl)
data_xlsx2=read_xlsx("iris.xlsx")

#read_xlsx(path, sheet = NULL, range = NULL, col_names = TRUE,
#          col_types = NULL, na = "", trim_ws = TRUE, skip = 0, n_max = Inf,
#          guess_max = min(1000, n_max))

#output
write.csv(data,"iris_csv.csv")

# homework
# 1.請讀入titatic_csv.csv檔案，設為data_t並截圖r_table。
# 2.請取出第300位乘客的資料。
# 3.請取出第1380號到1384號的性別。
# 4.（加分題）有多少男性？女性？
# 5.（加分題）有多少男性（女性）生/死？
# 6.（加分題）性別與生死有無關係？

# homework 2
# make yourself datasheet

