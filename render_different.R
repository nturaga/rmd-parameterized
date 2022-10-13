
renderMyDocument <- function(region, start) {
    rmarkdown::render("MyDocument.Rmd", params = list(
        region = region,
        start = start
    ))
}