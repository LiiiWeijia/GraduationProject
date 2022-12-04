library(mclust)
setwd('D://该干正事儿/我在上海师范大学/争取顺利毕业/中期答辩/数据')
data = read.csv('score_mclust.csv', header = F)
EM<-Mclust(data)
summary(EM,parameters=T)
data2 = read.csv('pca_data_dropna.csv',header = F)
EM2<-Mclust(data2[,6:24])
summary(EM2,parameters=T)

