select_ursidae <- function(data){
  ursidae_data <- data |>
    dplyr::filter(family == "Ursidae")
  
  # Retourner les données filtrées
  return(ursidae_data)
}
