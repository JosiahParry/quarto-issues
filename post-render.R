# this should be printed to stdout
message(Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES"))


# this should read the written html file
html <- rvest::read_html("index.html")
doc <- rvest::html_children(html)

# remove html elemnt
xml2::xml_remove(rvest::html_node(doc, "#heading-id"))

# this should save a new html file
htmltools::save_html(doc, "testing.html")

# this should create a new file called out.txt
writeLines("hello world", "out.txt")