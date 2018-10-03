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

final$file <- str_extract(list.files("Term_paper/data/"), "[А-я].*[А-я]")

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

write_csv(final, "repository/Tosha_annotation.csv", na = "")

# extract segment info from manualy prepared file -------------------------
final <- df[FALSE, ]

sapply(1:nrow(df), function(id) {
  print(id)
  if (sum(str_detect(df[id, 2:21], " "), na.rm = TRUE) == 0) {
    final[nrow(final)+1,] <<- df[id, ]
  } else{
    spaces <- str_which(df[id, 2:21], " ") + 1
    spaces_n <- sum(str_count(df[id, 2:21], " "), na.rm = TRUE) / length(spaces)
    n <- 1
    while (n <= spaces_n + 1) {
      final[nrow(final)+1,] <<- df[id, ]
      n <- n + 1
    }
    sapply(seq_along(spaces), function(x) {
      final[(nrow(final)-spaces_n):(nrow(final)), spaces[x]] <<- 
        str_split(df[id, spaces], " ")[[1]]
    })
  }
})

final %>% 
  write_csv("segments.csv", na = "")


