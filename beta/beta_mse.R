# load wham
library(wham)

# create directory for analysis, E.g.,
write.dir <- "C:/Users/jonathan.deroba/Documents/GitHub/READ-PDB-JDeroba-WHAMMSE-main/beta"
if(!exists("write.dir")) write.dir = getwd()
if(!dir.exists(write.dir)) dir.create(write.dir)
setwd(write.dir)

# copy asap3 data file to working directory
wham.dir <- find.package("wham")
file.copy(from=file.path(wham.dir,"extdata","ex1_SNEMAYT.dat"), to=write.dir, overwrite=FALSE)

# confirm you are in the working directory and it has the ASAP_SNEMAYT.dat file
list.files()

asapdat <- read_asap3_dat("ex1_SNEMAYT.dat")

input1 <- prepare_wham_input(asapdat) 
