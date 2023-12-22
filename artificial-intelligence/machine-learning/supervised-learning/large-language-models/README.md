# Large Language Models

## Natural Language Processing Paradigms
**Timeline**  
* 1950s: Symbolic NLP
* 1980s: Statistical NLP (probablistic approaches)
* 1990s: Supervised Machine Learning (relied on feature engineering)
* 2017: Pre-Training, Fine-Tuning (adapting a language model to peform a simpler task using task-specific data and functions)
* 2021: Pre-Training, Fine-Tuning, Prompting 

## Large Language Models
A language model predicts the propbability of a token sequence in a specified vocabulary. Language modeling is represented by two tasks: 
1. Auto-encoding (masked language)
2. Auto-regression 

Large Language Models (LLMs) are large neural networks. They are based on the "Transformer" architecutre. They use large training datasets and therefore can perform complex language tasks. A LLM consists of the following components:
* A program (code to run the model): usually a couple hundred lines of code
* A large file (the parameters): usually several GBs of data

### Types of LLMs
There are three types of LLMs.

**Auto-Regression**  
Predicts the next token in a sequence based on the previous token.

**Auto-Encoding**  
Builds a bi-directional representation of a sequence. 

**Combinations**  
Uses the encoder and decoder to be more versatile and flexible in generating text. 

## Pre-Training
Results in an "base LLM."
1. Get a large corpus (e.g., 10 TBs of text) of data
2. Get a GPU cluster (e.g., 5 to 10k GPUs for 2 weeks)
3. The resulting parameters is considered the product of lousy compression

## Fine-Tuning
Results in an "assistant LLM."

## Reinforcement Learning from Human Feedback
Results in an better-aligned "assistant LLM."

