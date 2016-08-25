library('data.table')
data<-fread('http://www.dataminingbook.info/pmwiki.php/Main/NumericDataAnalysis?action=download&upname=magic04.txt')
h<-data.matrix(data);

for(i in 1:5){
	for(j in i+1:5){
		if(i<=5 && j<=5){
		dev.new();
		plot(h[,i],h[,j],xlab=paste(i, "Attribute", sep="-"),ylab=paste(j, "Attribute", sep="-"));
		}
	}
}