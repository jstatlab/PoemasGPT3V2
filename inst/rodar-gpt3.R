token <- Sys.getenv("OPENAI_API_KEY")

# devtools::load_all(".")
pkgload::load_all(".") # Carrega menos coisas que devtools::load_all(".")

texto <- rodar_gpt3(token)

cat(texto, file = "READEME.md")

# Usar template setup-r-dependencies, pois
# ela é uma action preparada para lidar com dependências
# e que estamos trabalhando com pacote.
