Data=read.table("Example.txt", header = TRUE) #讀取Example.txt，並存成"Data"這個物件(資料表格式)
head(Data, 10) #看"Data"這個資料表的前10個row

summary(Data) #看"Data"這個資料表的所有變項的基本資訊

#練習1：為你的App增加一張圖
Data = read.table("Example.txt",header=TRUE) #讀取Example.txt，並存成"Data"這個物件(資料表格式)
head(Data, 10) #看"Data"這個資料表的前10個row

summary(Data) #看"Data"這個資料表的所有變項的基本資訊

Color = "red"
plot(Data, col = Color)


Data = read.table("Example.txt", header = TRUE) #讀取Example.txt，並存成"Data"這個物件(資料表格式)

Color = "red"          #指定顏色

#pdf("plot.pdf")      #開啟一個pdf file，路徑為"plot.pdf"
#plot(Data, col = Color) #將圖畫到開啟中的pdf file上去
#dev.off()            #關掉這個pdf file

#第三節：使控制區的參數隨著Server端的狀況而改變(1)
Data = read.table("Example.txt", header = TRUE)
head(Data, 10)
summary(Data) 
Result = lm(Weight~Height, data = Data) #linear regression test
Result
summary(Result)
plot(Data$Height, Data$Weight, pch = 19)
abline(Result)


Data=read.table("Example.txt", header = TRUE)
colnames(Data)    # 列出所有的欄位名稱
colnames(Data)[1] # 列出第一個欄位名稱
colnames(Data)[4] # 列出第四個欄位名稱(依此類推)
Result1 = lm(Data[,"Weight"]~Data[,"Height"])
summary(Result1)



Result1 = cor.test(Data[,"Weight"], Data[,"Height"], method = "pearson") # Pearson correlation
Result1

Result2 = cor.test(Data[,"Weight"], Data[,"Height"], method = "spearman") # Spearman correlation
Result2
