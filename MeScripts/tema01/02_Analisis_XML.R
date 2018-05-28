install.packages("XML")
library(XML)

url <- "../r-course/data/tema1/cd_catalog.xml" 

xmldoc <- xmlParse(url) #Pointer of the XML doc
rootnode <- xmlRoot(xmldoc) #Get link to the doc
rootnode[1]   #extract fisrt node

cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x,xmlValue)) #get all nodes
cds.catalog <- data.frame(t(cds_data),row.names = NULL)             #Transpose all before data
head(cds.catalog,2) 

#xpathSApply()
#getNodeSet()

population_url <- "../r-course/data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)
most_populated <- tables[[6]]
head(most_populated,4)

couston_table <- readHTMLTable(population_url, which = 6)


