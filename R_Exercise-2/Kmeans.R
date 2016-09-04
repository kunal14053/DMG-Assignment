mydata<-read.csv('IRIS1.csv');
mydata<-data.matrix(mydata);

k1<-mydata[1,];
k2<-mydata[nrow(mydata),];
k3<-mydata[nrow(mydata)/2,];
k4<-mydata[nrow(mydata)/2+1,];

C1<-c();
C2<-c();
C3<-c();
C4<-c();

p1<-c(0,0,0,0,0,0,0,0);
p2<-c(0,0,0,0,0,0,0,0);
p3<-c(0,0,0,0,0,0,0,0);
p4<-c(0,0,0,0,0,0,0,0);



find_mean<-function(mydata)
{
	C<-c();
	for(i in ncol(mydata))
	{
		C<-append(C,mean(mydata[,i]))
	}
	return(C);
}

find<-function(X)
{
	return(sum(X)/length(X));
}



Kmeans<-function(p1,p2,p3,p4,k1,k2,k3,k4,mydata,C1,C2,C3,C4)
{

		
	for(i in 1:nrow(mydata))
	{

		
		D1=dist(rbind(mydata[i,],k1));
		D2=dist(rbind(mydata[i,],k2));
		D3=dist(rbind(mydata[i,],k3));
		D4=dist(rbind(mydata[i,],k4));
		Min1=min(D1,D2,D3,D4);
		

		if(Min1==D1){
			C1<-rbind(C1,mydata[i,]);
		}else if(Min1==D2){
			C2<-rbind(C2,mydata[i,]);
		}else if(Min1==D3){
			C3<-rbind(C3,mydata[i,]);
		}else{
			C4<-rbind(C4,mydata[i,]);
		}
		
	}

	d1<-(find(p1)-find(k1))^2;
	d2<-(find(p2)-find(k2))^2;
	d3<-(find(p3)-find(k3))^2;
	d4<-(find(p4)-find(k4))^2;
	
	convergence<-sum(d1,d2,d3,d4);
	
	print(convergence);
	
	if(convergence<=0.001)
	{
		print(C1);
		print(k1);
		print('\n');
		print(C2);
		print(k3);
		print('\n');
		print(C3);
		print(k3);
		print('\n');
		print(C4);
		print(k4);
		print('\n');
		return(NULL);		
	}			
		p1<-k1;
		p2<-k2;
		p3<-k3;
		p4<-k4;
		k1<-find_mean(C1);
		k2<-find_mean(C2);
		k3<-find_mean(C3);
		k4<-find_mean(C4);
		C1<-c();
		C2<-c();
		C3<-c();
		C4<-c();
		Kmeans(p1,p2,p3,p4,k1,k2,k3,k4,mydata,C1,C2,C3,C4);
}
	


Kmeans(p1,p2,p3,p4,k1,k2,k3,k4,mydata,C1,C2,C3,C4);


#Problem
#not able to identify



