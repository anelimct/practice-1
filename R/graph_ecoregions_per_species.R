graph_ecoregions_per_species <- function(data){
  
  species_ecoregion_count <- data|> dplyr::group_by(species)|>
    dplyr::summarise(ecoregion_count = dplyr::n())
  
  ggplot(species_ecoregion_count, aes(x = species, y = ecoregion_count)) +
    geom_col(fill = "skyblue") +
    labs(
      title = "Nombre d'éco-régions par espèce",
      x = "Espèce",
      y = "Nombre d'éco-régions"
    ) +
    theme_minimal() +
    theme(
      axis.text.x = element_text(angle = 45, hjust = 1)
    )
}
