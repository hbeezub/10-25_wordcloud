#austen_books()  f1
#a data frame
sns<-austen_books()
#head
sns%>%
    filter(book =='Sense & Sensibility')
#head again
#tail(sns$book)
#it is a factor 


sns$book<-as.character(sns$book)
#get rid of "chapter 1 lines"
#print(sns=100)  wrong syntax did not show 1st 100lines
#library stringr

str_detect(sns$text,'^CHAPTER')
#the ^ is beginw with
#run line-most ar false with a few trues

#look at 725 & 827 pretty close together
#sns$text[725]
#sns$text[827]

#temp<-sns%>%
#  filter(str_detect(sns$text,'^CHAPTER'))
#store in temp file to look at it
#print temp  google are the 50 chapter yes!

#the ! takes out the chapter lines (!=not)
sns<-sns%>%
  filter(!str_detect(sns$text,'^CHAPTER'))

#we want to get rid of the intro part
#sns(line 50)  not work to look at 1st 50 lines

#must do rows an columns the , with nothing is all columns
sns[1:11,]

dim(sns)
#gives the last line  note I get 73238 not 12574  (I still have the other books)

sns<-sns[12:12574,]

#ltail(sns)
sns<-sns[1:12562,]

new file

library(tidytext)

