library(dplyr)

df <- data.frame(
  id = 1:10,
  score = c(95, 80, 85, 70, 90, 100, 60, 75, 85, 95),
  group = c("A", "B", "A", "B", "A", "B", "A", "B", "A", "B")
)

result <- df %>% filter(score > 80)
print(result)

# Cette commande nécessite le package dplyr dont toutes les dépendances sont dans le dossier renv.lock
