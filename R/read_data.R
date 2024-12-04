

load_data <- function() {
  # Lister les sous-dossiers dans le dossier "data"
  sous_dossiers <- list.dirs(here::here("data"), recursive = FALSE)
  
  # Parcourir les sous-dossiers
  for (sous_dossier in sous_dossiers) {
    # Lister les fichiers CSV dans chaque sous-dossier
    files <- list.files(sous_dossier, pattern = "\\.csv$", full.names = TRUE)
    
    # Lire les fichiers CSV et les charger dans l'environnement
    for (file in files) {
      # Créer un nom d'objet basé sur le nom du fichier (sans extension)
      object_name <- tools::file_path_sans_ext(basename(file))
      
      # Charger le fichier CSV et assigner à un objet
      assign(object_name, readr::read_csv(file), envir = .GlobalEnv)
    }
  }
}
