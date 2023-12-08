# Machine Learning
Machine learning (ML) is when machines use experience (data, not knowledge) to find patterns and make predictions. The different paradigms and techniques of ML are listed below. 
* [Supervised Machine Learning](/data-science/artificial-intelligence/machine-learning/supervised-learning/README.md)
  * Regression
  * Classification
* [Unsupervised Machine Learning](/data-science/artificial-intelligence/machine-learning/unsupervised-learning/README.md)
  * Clustering 
* [Reinforcement Machine Learning](/data-science/artificial-intelligence/machine-learning/reinforcement-learning/README.md)
* Transfer Machine Learning
  * Pre-training
  * Domain adaptation
  * Fine-tuning
  * Prompting
  * In-context learning
* Zero-Shot Machine Learning

**Use Cases**  
* Financial Institutions: detecting and preventing fraud
* Governments: increase efficiency and service
* Medicine & Science: diagnostics and drug research & development
* Marketing & Sales: Ad placement, discount offerings, etc.
  * Static profile: things that don’t change (e.g., location). 
 * Dynamic profile: variables (e.g., time of year, milestones).

**Programming vs ML**  
```python
# programming
def computer(data, program):
    output = program(data)
    return output

# ML
output = labeling(data)
def computer(data, output):
    model = ml(data, output)
    return model # a model is a program
```

**ML Models**
A model is a representation of something in the real-world. An ML model has the ability to learn.

## Featurization
Featurization includes data ingesting, data cleaning, data preprocessing, and feature engineering (e.g., feature encoding and feature binning). 

### Feature Encoding
Feature encoding is the process of representing an object as a list of numbers. Feature encoding includes decisions made about using properties like punctuation and capitalization to represent an object. 

**Text Featurization**
```
"John likes to watch movies. Mary likes movies too."
["John", "likes", "to", "watch", "movies", "Mary", "likes", "movies", "too"]
[1, 2, 1, 1, 2, 1, 1, 0, 0, 0]

"Mary also likes to watch football games."
["Mary", "also", "likes", "to", "watch", "football", "games"]
[0, 1, 1, 1, 0, 1, 0, 1, 1, 1]
```

## Risks
**Extraction of Training Data**  
It's hard to clean and remove sensitive data given the size of the data set

**Replacing the Rule Set**  
If you can replace the rule set, you can get the LLM to disclose the prompt and potentially reveal the prompt
* Exploits
  * Give the input in Chinese characters (i.e., something other than Unicode)

**Data Set Poisoning**    
It might contain malware that can be extracted later.
* Vulnerable libraries and files
  * Pickle: can be used to run arbitrary code
  * HDF5: vulnerable to buffer overflows
  * NumPy: vulnerable to zip-bombs (i.e., denial-of-service)

## Risk Mitigation Techniques
**Data Sanitization**  
Removing sensitive data.

**Differential Privacy**  
Change the way the model is developed (more computationally intense and therefore more expensive).
* Take the numbers the module uses to train
* Reduce their size
* Add noise to them