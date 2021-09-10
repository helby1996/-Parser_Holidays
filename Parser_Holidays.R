library(rvest)
library(selectr)
library(xml2)
library(jsonlite)
library(tidyverse)
library(XML)
library(foreach)
library(doParallel)
name="Austria"
parser<-function(name){
url <- "https://en.wikipedia.org/wiki/List_of_countries_by_number_of_public_holidays"
webpage <- read_html(url)
d <- html_nodes(webpage, "tr")%>%html_text()
d=gsub("\\[.*", "", d)
page <- map(name, function(n){
  list_page <- paste0("https://en.wikipedia.org/wiki/Public_holidays_in_", n)
})
tables<-page[[1]]%>%
  read_html()%>%
  html_nodes("table.wikitable")
tables
holidays<-tables[1]%>%html_table()
non_work<-tables[2]%>%html_table()
holidays
non_work
}





