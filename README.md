# HackBio_Stage1_Project
Project on Protein weight Calculator in R
ESSAY ON PROTEIN WEIGHT CALCULATOR

Solving the Protein Weight Calculator in R
The objective of this task is to write an R function that calculates the molecular weight of a protein sequence in Kilodaltons (kDa). The function needed to be flexible, accept a default input, handle both valid and invalid characters and return an accurate Protein molecular weight using the provided amino acid table.

STEP 1: Creating the Amino Acid Weight Reference

The first step was to organize the molecular weights of the 20 standard amino acids. I created a named vector (AminoA_Weights) in R where each one-letter amino acid code corresponds to its molecular weight in Daltons. This structure acts as a lookup table, allowing R to efficiently retrieve the correct weight for each amino acid in a protein sequence.


STEP 2: Defining the Function

Next, I defined a custom function called Protein_MW. The function was given a default input value of my name “ESTHER”, so that it could run even if no argument was provided. This also demonstrate how default parameters work in R.


STEP 3: Standardizing the Input

To ensure consistency, the input string was converted to uppercase using the toupper() function. This step allows the function to handle sequences written in lowercase, uppercase, or mixed case without producing errors.


STEP 4: Splitting the Protein Sequence

The input string was then split into individual characters using the strsplit() function. This created a vector where each element represents a single amino acid, making it easier to process the sequence, one amino acid at a time.


STEP 5: Writing the Loop to Accumulate Total Mass

Next, I assigned a variable to hold the running total, i.e. total_mass <- 0, It starts at zero and gets updated step by step as it moves through the sequence. Then i created a loop to go through each amino acid in the sequence and keep a running total of its contribution to the overall molecular weight.


STEP 6: Handling Unknown Characters 

Protein sequences or names may contain characters that do not represent valid amino acids. To make the function robust and user-friendly, I filtered the vector to keep only characters that match the one-letter amino acid codes in the weight table. Using a condition i.e. Else, any Unknown characters contribute 0 to the total mass, ensuring the function could still calculate a meaningful molecular weight.


STEP 7: Calculating the Molecular Weight in KiloDaltons

The valid amino acids were used to index the amino acid weight vector and their weights were accumulated using the loop function. Because the provided weights are in Daltons, the total_mass was divided by 1000 to convert the result into kiloDaltons (kDa).


CONCLUSION

By breaking the problem into clear steps, creating a reference table, cleaning and validating input, and applying vectorized calculations, I was able to build a flexible and user-friendly protein molecular weight calculator in R. This approach highlights the importance of data validation and thoughtful function design when working with biologic
