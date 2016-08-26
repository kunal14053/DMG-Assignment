MyData<-read.table("http://www.dataminingbook.info/pmwiki.php/Main/NumericDataAnalysis?action=download&upname=magic04.txt",sep=',');

max=-9999;
f1=-1;
f2=-1
n=length(MyData);
i=1;
j=1;

print(n);

while(i<=n-1){

j=1;
while(j<=n-1){
if(i!=j){
a=cor(MyData[,i],MyData[,j]);
if(max < a)
{
max=a;
f1=i;
f2=j;
}
}
j=j+1;
}
i=i+1;
}

print(paste('Attribute1: ',f1,''));
print(paste('Attribute2: ',f2,''));
print(max)