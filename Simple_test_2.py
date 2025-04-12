"""
simple_script_2.py

Purpose: Class
Author: Alan Wong
Date: April 1 2025
"""

dna_sequence = "ATGCGTAC"

sequence_length = 8

print("The DNA sequence is:", dna_sequence)

print("The number is:", sequence_length)

dna_sequence = "ATGCNNGCTANNCGTAA"

clean_dna = dna_sequence.replace("N", "A")

fifth_base = clean_dna[4]  

subsequence = clean_dna[2:8]  

print("Original DNA sequence:  ", dna_sequence)
print("Cleaned DNA sequence:   ", clean_dna)
print("The 5th base is:         ", fifth_base)
print("Bases 3 to 8 are:        ", subsequence)

favorite_colors = ["yellow", "orange", "blue"]

print("Second favorite color:", favorite_colors[1])

favorite_colors.append("purple")

favorite_colors.remove("orange")

print("Final list of favorite colors:", favorite_colors)
