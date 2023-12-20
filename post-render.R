message(Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES"))

library(rvest)

html <- read_html("index.html")
doc <- html_children(html)
xml2::xml_remove(html_node(doc, "#heading-id"))

# this should save a new html file
htmltools::save_html(doc, "testing.html")

writeLines("hello world", "out.txt")