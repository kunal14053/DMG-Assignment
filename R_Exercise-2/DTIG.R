mydata=read.csv("Titanic.csv");

D1<-unique(factor(mydata[,2]));
C1<-levels(droplevels(D1));
D2<-unique(factor(mydata[,3]));
C2<-levels(droplevels(D2));
D3<-unique(factor(mydata[,4]));
C3<-levels(droplevels(D3));

print(C1);
print(C2);
print(C3);