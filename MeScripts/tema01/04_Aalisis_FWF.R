students_data <- read.fwf("../r-course/data/tema1/student-fwf.txt",
                          widths = c(4,15,20,15,4),
                          col.names = c("id","nombre","email","carrera", "año"))

students_data_header <- read.fwf("../r-course/data/tema1/student-fwf-header.txt",
                                 widths = c(4,15,20,15,4),
                                 header = T, sep = "\t",
                                 skip = 2)

students_data_no_email <- read.fwf("../r-course/data/tema1/student-fwf.txt",
                          widths = c(4,15,-20,15,4),
                          col.names = c("id","nombre","carrera", "año"))