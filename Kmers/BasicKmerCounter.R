# install.packages("kmer")
# library(kmer)
# 
# # Example DNA sequence
# sequence <- "ATCGATCAC"
# 
# # Define k-mer length
# k <- 3
# 
# # Count k-mers
# kmer_counts <- kcount(sequence, k = k)
# 
# # View the k-mer counts
# print(kmer_counts)

# Install Biostrings if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("Biostrings")
library(Biostrings)

current_wd <- getwd()
print(current_wd)
# setwd("./Downloads/ncbi_dataset/ncbi_dataset/data")
# current_wd <- getwd()
# print(current_wd)

# Define your DNA sequence and k-mer length
something <- readDNAStringSet("./GCF_000837185.1/GCF_000837185.1_ViralProj14097_genomic.fna")
list_of_files <- list.files(path = ".", recursive = TRUE, full.names = TRUE)
print(list_of_files)
print(something)
dna_sequence <- DNAString("ATGCGTACGT")
k <- 3

# Count oligonucleotide frequencies (k-mers)
kmer_counts <- oligonucleotideFrequency(dna_sequence, k)
print(kmer_counts)