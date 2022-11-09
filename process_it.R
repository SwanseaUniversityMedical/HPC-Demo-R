#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly=TRUE)

print("filename")
print(args[1])

print("numeric param")
print(args[2])

# Installing and loading dependencies 
#install.packages("readr")
library(readr)

# AIM: a small example R script that runs from the command prompt and 
# takes two parameters - Filename and Numeric Number
# the file will be a small text file 
# can it call a function to read the number of lines in the file, 
# multiply this value by the numeric value passed and 
# write the result to a file who name is 
# a combination of the input + numberic + .txt or something.

process_it <- 
  function (File, InputNum) 
    {
    # dfile   = paste(File,".txt",sep = "")
    df      = read.table(File, quote="\"",comment.char = "")
    row     = nrow(df)
    num     =  row * InputNum
    OutFile = paste0(File,InputNum,".txt")
    write.table(num, file=OutFile,row.names = FALSE, col.names = FALSE)
    print('File saved in directory') 
    }

process_it(File=args[1], InputNum = strtoi(args[2]) )