# TODO:   Script for actualize the example data 'Easplist'
# 
# Author: Miguel Alvarez
################################################################################

# Import last version of taxlist
library(devtools)
install_github("kamapu/taxlist")

# Load and write the data
library(taxlist)
Easplist <- tv2taxlist("Easplist")
validObject(Easplist)
summary(Easplist)

# Modify concept view
Easplist@taxonViews[1,c("Author","Title","Published")] <- c("Ville de Geneve",
        "African Plant Database",
        "http://www.ville-ge.ch/musinfo/bd/cjb/africa/recherche.php")

taxon_views(Easplist)

save(Easplist, file="M:/WorkspaceEclipse/taxlist/data/Easplist.rda")
