# Ejecutar desde la carpeta que contiene este archivo y datos/.
# Por defecto genera el HTML del solucionario; para ejercicios:
# Rscript ejecutar.R ejercicios
args <- commandArgs(trailingOnly=TRUE)
modo <- if (length(args)) args[1] else "resuelto"
stopifnot(modo %in% c("resuelto", "ejercicios"))
archivo <- paste0("MOFA2_", modo, ".Rmd")
if (!file.exists(archivo) || !dir.exists("datos")) {
  stop("Ejecuta desde la carpeta descomprimida de la extensión.")
}
if (!requireNamespace("rmarkdown", quietly=TRUE) ||
    !requireNamespace("MOFA2", quietly=TRUE)) {
  stop("Primero ejecuta Rscript instalar.R")
}
if (!rmarkdown::pandoc_available()) stop("Pandoc no está disponible.")
resultado <- rmarkdown::render(archivo, envir=new.env(parent=globalenv()))
cat("HTML generado:", resultado, "\n")
