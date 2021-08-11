## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo = TRUE, results = 'hide', warning = FALSE, message = FALSE----
## First, we save your current workspace
save.image(file=paste(tempdir(), "currsession.RData", sep = "/"))
## make sure you start with a clean session.
rm(list = ls(all = TRUE))
install.packages("SleepCycles", repos = "http://cran.us.r-project.org")

## ----echo=TRUE, warning=FALSE, results='asis'---------------------------------
library(SleepCycles)
data(sleepstages2)

## save current working directory so we can reset this later.
olddir <- getwd()

## create a new directory in the temporary directory (don't worry, it will automatically be deleted  
## when you restart your computer)
newdir <- file.path(tempdir(),"SleepCycles_exmpl2")
dir.create(newdir, showWarnings = FALSE)

## write the sleepstages2 file to this new directory
write.table(sleepstages2, file = paste(newdir, "sleepstages2.txt", sep = "/"),
row.names=FALSE, col.names = TRUE, quote = FALSE, sep = ",")

## ----echo=TRUE, warning=FALSE, results='asis', eval = FALSE-------------------
#  SleepCycles::SleepCycles(newdir, filetype = "txt")
#  
#  ## We again load the workspace image from before the code above was executed
#  save.image(file=paste(tempdir(), "currsession.RData", sep = "/"))
#  
#  ## we set the directory back to the one we were using before as we were just working in the
#  ## temp directory.
#  setwd(olddir)

