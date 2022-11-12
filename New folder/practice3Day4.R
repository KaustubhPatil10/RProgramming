library(tidyverse)
table4a

gather(table4a,"1999","2000",key="Year",value="Cases")

?gather(table4a,"1999","2000",key="Year",value="Cases",convert=T)

gather(table4a,"1999","2000",key="Year",value="Cases",convert=T,factor_key= FALSE)

#--------------------------------------------------------

table2
spread(table2,key="type",value="count")

#------------------------------------------------------------

table2 %>%
  spread(key="type",value= "count")
#-----------------------------------------------------------

table3

separate(table3,"rate",into=c("cases","population"),sep="/",convert=T)


separate(table3,"year",into=c("cent","yr"),sep=2,convert=T)

#---------------------------------------------------------------

table5

unite(table5,"New_Yr","century","year",sep="")


unite(table5,"New_rate_Yr","century","rate","year",sep="_")

#-----------------------------------------------------------------
stocks <- tibble(
  year = c(2015,2015,2015,2015,2016,2016,2016),
  qtr = c(1,2,3,4,2,3,4),
  return = c(1.88,0.59,0.35,NA,0.92,0.17,2.66)
)
stocks

spread(stocks,key="year",value ="return")

drop_na(stocks)

complete(stocks,year,qtr)
mean=mean(stocks$return,na.rm=T)
mean

complete(stocks,year,qtr,fill=list(return=mean))

dt<-complete(stocks,year,qtr)
fill(dt,return)

dt<-complete(stocks,year,qtr)
fill(dt,return,.direction="up")

#---------------------------------------------------------------
