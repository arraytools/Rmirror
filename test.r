# Assume the server IP is 10.133.2.111. If you have a hostname, replace the IP with your hostname.

hostname <- "http://10.133.2.111" 
# Test CRAN:
r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"
r <- c(BRB=file.path(hostname, 'CRAN'), r)
#                        BRB                                 CRAN                            CRANextra
# "http://10.133.2.111/CRAN"          "http://cran.r-project.org" "http://www.stats.ox.ac.uk/pub/RWin"
options(repos=r)
install.packages('glmnet')

# Test Bioconductor:
r <- getOption("repos"); r["CRAN"] <- "http://cran.r-project.org"
r <- c(BRB=file.path(hostname, 'CRAN'), r)
options("BioC_mirror" = file.path(hostname, 'Bioc'))
source(file.path(hostname, 'Bioc/biocLite.R')) # instead of source("http://bioconductor.org/biocLite.R")
# This above line source('biocLite.R') can be placed either before or after options() command.
biocLite("aCGH", ask = FALSE)
