library(rmarkdown)
library(lubridate)

## Pass in other params for render() as required 
renderMyDocument <- function(template_doc = "demo.Rmd",
                             genes, cancers,
                             output_dir = ".",
                             output_file, ...) {
    output_file <- paste0(output_file, "-", lubridate::today(),".html")
    
    res <- rmarkdown::render(template_doc,
                             params = list(
                                 gene1 = genes[1],
                                 gene2 = genes[2],
                                 cancer_types_vector = cancers),
                             output_dir = output_dir,
                             output_file = output_file,                  
                             ...)
    res
}

## Call function

renderMyDocument(template_doc = "demo.Rmd",
                 genes = c('BRCA1', 'BRCA2'),
                 cancers = c('Breast', 'Prostate', 'Bone'),
                 output_dir = ".",
                 output_file = 'test')
