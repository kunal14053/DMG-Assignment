library(ggplot2)
mydata<-read.csv('IRIS.csv',header=FALSE)
Call<-function(i){
irisCluster <- kmeans(mydata[, 3:4], i);
irisCluster$cluster <- as.factor(irisCluster$cluster);
ggplot(mydata, aes(V3,V4, color =irisCluster$cluster)) + geom_point()
}	