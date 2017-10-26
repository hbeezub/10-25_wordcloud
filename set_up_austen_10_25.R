#set-up file

sns<-austen_books()

sns<-sns%>%
  filter(book == 'Sense & Sensibility')

sns$book<-as.character(sns$book)

str_detect(sns$text,'^CHAPTER')

sns$text[725]
sns$text[827]

temp<-sns%>%
    filter(str_detect(sns$text,'^CHAPTER'))

#the ! takes out the chapter lines (!=not)
sns<-sns%>%
  filter(!str_detect(sns$text,'^CHAPTER'))
  

sns[1:11,]

dim(sns)

sns<-sns[12:12574,]

#ltail(sns)
sns<-sns[1:12562,]