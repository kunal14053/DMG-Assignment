library('data.table');
data<-fread('http://www.dataminingbook.info/pmwiki.php/Main/NumericDataAnalysis?action=download&upname=magic04.txt');
data<-data[,V11:=NULL];
f<-cov(m);
print(f);


x=-1;
y=-1;

for(i in 1:nrow(h))
{
	for(j in 1:ncol(h))
	{
		if(i!=j)
		{
			if(h[i,j]==0)
			{
				x=i;
				y=j;
			}
		}
	}
}

if(x ==-1 || y==-1){
	print('No Pair Is Linearly Independent');
}else{
	print(paste('Attribute',x,''));
	print(paste('Attribute',y,''));
}
