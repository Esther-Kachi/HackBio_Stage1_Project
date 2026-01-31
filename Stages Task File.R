#Stage One Task

#Task 1 - GC% Calculation

#Assigned GC% calculator function
GC_percent <- function(input_gene) {{
  #split gene
  input_gene <- strsplit(x = input_gene, split = "")[[1]]
  print(length(input_gene))
  
  #core operations
  gc_counter <- 0
  for (nuc in input_gene) {
    
    #print(nuc)
    if(nuc == 'G' | nuc == 'C') { #if statement
      gc_counter = gc_counter+1}
  }
}
  (gc_counter / length(input_gene)) * 100
}


#Making it robust enough to handle nuc sequences written in upper and lower case
GC_percent <- function(input_gene) {{
  #normalize nucleotide case
  input_gene <- toupper(input_gene)
  input_gene <- strsplit(x = input_gene, split = "")[[1]]
  
  #core operations
  gc_counter <- 0
  for (nuc in input_gene) {
    if(nuc == 'G' | nuc == 'C') {
      gc_counter = gc_counter+1}
  }
}
  (gc_counter / length(input_gene)) * 100
}

#Task 1 Example - Executing with given sequence
input_gene <- 'gcaTTTAT'
GC_percent(input_gene)



#Task 2 - Protein weights in KiloDalton

AminoA_weights <- c( A = 89.09, R = 174.20, N = 132.12, D = 133.10, C = 121.15, E = 147.13, Q = 146.15, G = 75.07, H = 155.16, I = 131.18, L = 131.18, K = 146.19, M = 149.21, F = 165.19, P = 115.13, S = 105.09, T = 119.12, W = 204.23, Y = 181.19, V = 117.15 )

Protein_MW <- function(protein_seq = "ESTHER") {
  protein_seq <- toupper(protein_seq)
  protein_seq <- strsplit(protein_seq, split = "")[[1]]
  
  #core operations
  total_mass <- 0
  for (AA in protein_seq) {
    if (AA %in% names(AminoA_weights)) {
      total_mass <- total_mass + AminoA_weights[AA]
    } else {
      total_mass <- total_mass + 0 #unknown amino acid will count as 0
    }
  }
  #convert to KiloDalton
  total_mass / 1000
}

#Task 2 question
result <- Protein_MW()
print(result)


