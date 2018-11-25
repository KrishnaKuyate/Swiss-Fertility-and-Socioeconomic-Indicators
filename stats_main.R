##Datset :
library(knitr)
library(dplyr)
library(ggplot2)
library(kableExtra)

swiss
#Statistics:
kable(swiss)%>%kable_styling(position = "left",font_size =15,full_width = TRUE)%>%
  column_spec(1,bold = TRUE,color ="white",background = "#223300" )%>%
  column_spec(2:7,bold = TRUE,color ="#223300",background = "#ddff99" )%>%
  row_spec(0,,bold = TRUE,color ="#ccff66",background = "#111a00")%>%
  scroll_box(height="600px")

as.data.frame(swiss)->swiss1
sapply(swiss1,FUN=max)->max_swiss
as.data.frame(max_swiss)->Maximum_Value

max_swiss
##Maximum Fertility provinces
max_swiss[1,]
##Maxixmum no. of males involved in agriculture as occupation provinces
max_swiss[2,]
##Maximum draftees receiving highest mark on army examination
max_swiss[3,]
##Maximum education beyond primary school for draftees
max_swiss[4,]
##Maximum catholic’ (as opposed to ‘protestant’)
max_swiss[5,]
##Maximum 	Infant.Mortality	live births who live less than 1 year.
max_swiss[6,]

kable(Maximum_Value)%>%kable_styling(position = "left",font_size =15,full_width = TRUE)%>%
  column_spec(1,bold = TRUE,color ="white",background = "#223300" )%>%
  column_spec(2,bold = TRUE,color ="#223300",background = "#ddff99" )%>%
  row_spec(0,bold = TRUE,color ="#ccff66",background = "#111a00")



##Minimum Value:

sapply(swiss1,FUN=min)->min_value
as.data.frame(min_value)->min_value
kable(min_value)%>%kable_styling(position = "left",font_size =15,full_width = TRUE)%>%
  column_spec(1,bold = TRUE,color ="white",background = "#223300" )%>%
  column_spec(2,bold = TRUE,color ="#223300",background = "#ddff99" )%>%
  row_spec(0,bold = TRUE,color ="#ccff66",background = "#111a00")


##Avarage Value:
sapply(swiss1,FUN =mean)->Mean_Value
as.data.frame(Mean_Value)->Mean_Value
kable(Mean_Value)%>%kable_styling(position = "left",font_size =15,full_width = TRUE)%>%
  column_spec(1,bold = TRUE,color ="white",background = "#223300" )%>%
  column_spec(2,bold = TRUE,color ="#223300",background = "#ddff99" )%>%
  row_spec(0,bold = TRUE,color ="#ccff66",background = "#111a00")


##Total Value:

sapply(swiss1,FUN=sum)->Total_Value
as.data.frame(Total_Value)->Total_Value
kable(Total_Value)%>%kable_styling(position = "left",font_size =15,full_width = TRUE)%>%
  column_spec(1,bold = TRUE,color ="white",background = "#223300" )%>%
  column_spec(2,bold = TRUE,color ="#223300",background = "#ddff99" )%>%
  row_spec(0,bold = TRUE,color ="#ccff66",background = "#111a00")

?column_spec
