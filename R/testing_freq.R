#devtools::install_github("tidyverse/dplyr")
#Testing

# testing -----------------------------------------------------------------

# library(forcats)
# library(dplyr)
# library(freqR)
# dfgss <-gss_cat

# Simple, single ------------------------------------------------------------------
# freq(iris,Species)
# freq(dfgss, year)
# freq(dfgss$year)
# freq(dfgss[["year"]], sort=F) # This doesn't work because it's still passing a dataframe
# x <-freq(iris,Species)
# print(x)
# y=dfgss$year
# freq(y)
# # Missings ----------------------------------------------------------------
# 
# dfgss$year[c(seq(1,1000, by=4))] <- NA
# 
# x <- freq(dfgss, year)
# freq(dfgss, year, na.rm=F)
# freq(dfgss, year, na.rm=T)
# x <- freq(dfgss, year, na.rm = T)
# x
# x[,2] <- scales::comma(x[,2])
# x[,3] <- scales::percent(x[,3], scale=1)
# x[,4] <- scales::comma(x[,4])
# x[,5] <- scales::percent(x[,5], scale=1)
# Multiple variables (DEFUNCT) ------------------------------------------------------
#freq(dfgss, year, marital, partyid)
#No longer working

# # # whole dataset  (DEFUNCT) -----------------------------------------------------------
 # dfgss1 <- select(dfgss, year, marital, race, partyid)
 # freq(dfgss1)

# # sort --------------------------------------------------------------------
# freq(dfgss, year, sort = F)
# freq(dfgss, year, sort = T)


# # # plot Results -----------------------------------------------------------
# freq(dfgss, year, plot = F)
# freq(dfgss, year, plot = T)

# # As part of a dplyr chain ------------------------------------------------
#As part of chain
# df <- dfgss %>%
#   filter(year>2006) %>%
#   freq(year)

