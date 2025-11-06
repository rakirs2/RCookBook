rm(list = ls())
# Install Biostrings if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")
library(Biostrings)

# Might need to change wd to the data folder.
current_wd <- getwd()
print(current_wd)
# setwd

# Define your DNA sequence and k-mer length
something <- readDNAStringSet("./GCF_000837185.1/GCF_000837185.1_ViralProj14097_genomic.fna")
list_of_files <- list.files(path = ".", recursive = TRUE, full.names = TRUE)

k <- 12

total_counts <- oligonucleotideFrequency( DNAString(""), k)
for (file in list_of_files){
  # print(typeof(file))
  if(endsWith(file, ".fna")){
    print(file)
    dnass <- readDNAStringSet(file)
    total_counts <- total_counts + oligonucleotideFrequency(dnass[[1]], k)
  }
}
    
# print(kmer_counts)
print(total_counts)