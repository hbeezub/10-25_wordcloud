#austin wordcloud

sns%>%
  unnest_tokens(word,text)

#make df (store)

words_df<-sns%>%
  unnest_tokens(word,text)


words_df%>%
  filter(!(word %in% stop_words$word))
#make df
words_df<-words_df%>%
  filter(!(word %in% stop_words$word))

#frequesny of words

words_df<-words_df%>%
  filter(!(word %in% stop_words$word))%>%
  group_by(word)%>%
  summarise(count=n())

# save as stored freq
word_freq<-words_df<-words_df%>%
  filter(!(word %in% stop_words$word))%>%
  group_by(word)%>%
  summarise(count=n())

#wordcloud(word_freq$word,word_freq$count) # does too many!!!!
#?wordcloud    gives info on wordcloud
wordcloud(word_freq$word,word_freq$count,min.freq=25)

#save as clean & wordcloud files
#push up to git hub
#don't need notes for class
