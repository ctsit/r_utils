packages_to_install <- read.csv("https://raw.githubusercontent.com/ctsit/r_utils/master/data/latex_packages.csv")

tinytex::tlmgr_install(packages_to_install$package)

