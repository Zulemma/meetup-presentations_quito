library(dplyr)
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"
if (!file.exists(filename)) download(url,filename)
msleep <- read.csv("msleep_ggplot2.csv")
head(msleep)

# The msleep (mammals sleep) data set contains the sleeptimes and weights for a set of mammals 
# and is available in the dagdata repository on github. This data set contains 83 rows and 11 variables.

head(select(msleep, name, sleep_total))

msleep %>% 
  select(name, sleep_total) %>% 
  head
