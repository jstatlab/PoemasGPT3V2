token <- Sys.getenv("OPENAI_API_KEY")

# devtools::load_all(".")
pkgload::load_all(".") # Carrega menos coisas que devtools::load_all(".")

texto <- rodar_gpt3(token)

text <- c(
  "<!-- badges: start -->
  [![R-CMD-check](https://github.com/jstatlab/PoemasGPT3V2/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jstatlab/PoemasGPT3V2/actions/workflows/R-CMD-check.yaml)
  <!-- badges: end -->",
  text
)

cat(texto, file = "README.md")

# Usar template setup-r-dependencies, pois
# ela é uma action preparada para lidar com dependências
# e que estamos trabalhando com pacote.
