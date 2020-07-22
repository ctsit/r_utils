library(tinytex)
library(tidyverse)

# which latex packages are installed locally?
# df <- tinytex::tl_pkgs() %>% 
#   tibble() %>% 
#   rename(package = 1)
# 
# write_csv(df, "install_latex_packages.csv")

packages_to_install <- read.csv("https://raw.githubusercontent.com/ctsit/r_utils/master/data/latex_packages.csv?token=AISFJOAI7HBYNGZ3T4Y3T4C7EHHH4")

 tlmgr_install(packages_to_install$package)

