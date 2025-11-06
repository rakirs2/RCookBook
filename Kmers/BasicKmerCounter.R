# Install Biostrings if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("Biostrings")
library(Biostrings)

current_wd <- getwd()
print(current_wd)

# Define your DNA sequence and k-mer length
something <- readDNAStringSet("./GCF_000837185.1/GCF_000837185.1_ViralProj14097_genomic.fna")
list_of_files <- list.files(path = ".", recursive = TRUE, full.names = TRUE)
print(list_of_files)
print(something)

dna_sequence <- DNAString("ATGCGTACGT")
k <- 12

empty_counts <- oligonucleotideFrequency( DNAString(""), k)
print("empty counts")
print(empty_counts)
# Count oligonucleotide frequencies (k-mers)
kmer_counts <- oligonucleotideFrequency(something, k)

kmer_counts<-  kmer_counts + oligonucleotideFrequency(something, k)

print(kmer_counts)