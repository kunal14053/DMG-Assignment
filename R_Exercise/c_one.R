library('data.table')
data<-fread('http://www.dataminingbook.info/pmwiki.php/Main/ContingencyTableAnalysis?action=download&upname=adult.data.txt')
chisq.test(data);
