


library(ggplot2)
library(tibble)
rownames_to_column(swiss1, var="Provinces")->swiss_1
ggplot(swiss_1, aes(Education,Examination, colour =Education))+ geom_point()

       

##Total_Value
rownames_to_column(Total_Value, var="Variable")->Total_Value_p
ggplot(Total_Value_p,aes(x=Variable,y=Total_Value,fill=Variable))+geom_bar(stat = "identity",position="dodge")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  ggtitle("Swiss Data Variable and Total Value")+ 
  theme(plot.title = element_text(face = "bold",size =15))+geom_point()
