# Download PanTHERIA and WWF WildFinder databases
#
# This project aims to download PanTHERIA and WWF WildFinder databases. It is 
# structured as a research compendium to be reproducible. This is the result of
# the Practice 1 of the training course Reproducible Research in Computational 
# Ecology available at: 
# <https://rdatatoolbox.github.io/chapters/ex-compendium.html>.
#
# Author: Jane Doe
# Email: jane.doe@mail.me
# Date: 2024/12/02


# Setup project ----

## Install packages ----

devtools::install_deps()


## Load packages & functions ----

devtools::load_all()



# Run project ----

## Download raw data ----

source(here::here("analyses", "download-data.R"))

quarto::quarto_render("index.qmd")



