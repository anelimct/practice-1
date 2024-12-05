# Created by use_targets().
# Follow the comments below to fill in this target script.
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
library(ggplot2)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  
)

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# tar_source("other_functions.R") # Source other scripts as needed.

# Replace the target list below with your own:
list(
  tar_target(raw_sp_list_file, here::here("data", "wildfinder","wildfinder-mammals_list.csv"  ), format = "file"),
  tar_target(raw_eco_list_file, here::here("data", "wildfinder","wildfinder-ecoregions_list.csv"  ), format = "file"),
  tar_target(raw_sp_eco_file, here::here("data", "wildfinder","wildfinder-ecoregions_species.csv"  ), format = "file"),
  
  tar_target(raw_sp_list, read_sp_list(raw_sp_list_file)), 
  tar_target(raw_eco_list, read_eco_list(raw_eco_list_file)), 
  tar_target(raw_sp_eco, read_sp_eco(raw_sp_eco_file)),
  
  tar_target(sp_list, select_ursidae(raw_sp_list)),
  
  tar_target(data, join_3_tables(raw_eco_list,raw_sp_eco, sp_list)), 
  tar_target(plot, graph_ecoregions_per_species(data)),
 
  tarchetypes::tar_quarto(report, "render_file.qmd") # Just defines a target object.
)
