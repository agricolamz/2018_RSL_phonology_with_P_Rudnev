setwd("/home/agricolamz/work/articles/2018_Tosha_preprint_SL_annotation_verbs")
library(tidyverse)
library(xml2)

# get the column names from one file
df1 <- read_xml("Term_paper/dataAnatation/3862.eaf")
sapply(3:23, function(x){
  xml_attrs(xml_child(df1, x))[["TIER_ID"]]
}) -> columns

# create an empty df
final <- matrix(nrow = 401, ncol = 22)

# create a list of files for analysis
files <- str_extract(list.files("Term_paper/dataAnatation/"), ".*\\.eaf")

sapply(seq_along(files), function(i){
  df <- read_xml(paste0("Term_paper/dataAnatation/", files[i]))
  
  sapply(3:23, function(x){
    if(str_detect(as.character(xml_child(df, x)), "ANNOTATION_VALUE")){
        paste(str_sub(unlist(str_extract_all(as.character(
          xml_child(df, x)), 
          "ANNOTATION_VALUE>.*</ANNOTATION_VALUE")), 18, -19), collapse = " ")
      } else{
        ""
      }
  }) -> values
  values <- c(values, xml_attrs(xml_child(xml_child(df, 1), 1))[["RELATIVE_MEDIA_URL"]])
  
  final[i,] <<- values

  })

as.tibble(final) ->
  final

colnames(final) <- c(columns, "url")
 
final %>% 
  mutate_all(.funs = as.character) %>% 
  mutate(url = paste0(
           "https://github.com/ToszaPlaskovickaja/Term_paper/blob/master/data",
           str_replace_all(url, "\\.\\.", ""),
           "?raw=true"),
         labeled_url = paste0(
           "<a href='",
           url,
           "' target='_blank'>",
           Sign,
           "</a>"
         )) ->
  final

write_csv(final, "Tosha_annotation.csv", na = "")
