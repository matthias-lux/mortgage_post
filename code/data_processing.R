# This script imports and prepares the data

# clear cache
rm(list=ls())
# import relevant packages
require('rugarch')

# read data in: LIBOR
libor <- read.csv('../data/USD12MD156N.csv')
names(libor)[names(libor) == 'USD12MD156N'] <- 'libor12m'
libor$libor12m <- as.numeric(levels(libor$libor12m)[libor$libor12m])

# read data in: CMT
cmt <- read.csv('../data/DGS1.csv')
names(cmt)[names(cmt) == 'DGS1'] <- 'cmt_rate'
cmt$cmt_rate <- as.numeric(levels(cmt$cmt_rate)[cmt$cmt_rate])

#dropping holidays
libor <- na.omit(libor)
cmt <- na.omit(cmt)

