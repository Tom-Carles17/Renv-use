# Utiliser une image de base avec R pré-installé
FROM rocker/r-ver:4.4.0

# Installer la version stable de renv
RUN R -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"

# Définir le répertoire de travail
WORKDIR /project

# Copier le fichier renv.lock
COPY renv.lock renv.lock

# Créer le répertoire renv et copier les fichiers nécessaires
RUN mkdir -p renv
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

# Restaurer les packages avec renv
RUN R -e "renv::restore()"

# Les lignes suivantes lance automatiquement le script.R au démarrage du conteneur
COPY script.R /project/script.R
CMD ["Rscript", "/project/script.R"]
