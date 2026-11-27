# Ejecutar UNA vez desde la terminal: Rscript instalar.R
options(repos = c(CRAN = "https://cloud.r-project.org"))
cran <- c("knitr", "rmarkdown", "BiocManager")
missing <- cran[!vapply(cran, requireNamespace, logical(1), quietly=TRUE)]
if (length(missing)) install.packages(missing)
if (!requireNamespace("MOFA2", quietly=TRUE)) {
  BiocManager::install("MOFA2", ask=FALSE, update=FALSE)
}
stopifnot(requireNamespace("MOFA2", quietly=TRUE),
          requireNamespace("rmarkdown", quietly=TRUE),
          requireNamespace("knitr", quietly=TRUE))
if (!rmarkdown::pandoc_available()) {
  stop("Falta Pandoc. En Arch Linux: sudo pacman -S pandoc; o abre RStudio.")
}
cat("Paquetes R disponibles. El primer ajuste puede preparar el backend Python.\n")
cat("Siguiente paso: Rscript ejecutar.R\n")
