# Machine Learning
Machine learning (ML) is when machines use experience (data, not knowledge) to find patterns and make predictions. The different paradigms and techniques of ML are listed below. 
* [Supervised Machine Learning](/theory/data-science/artificial-intelligence/machine-learning/supervised-learning/README.md)
  * Regression
  * Classification
* [Unsupervised Machine Learning](/theory/data-science/artificial-intelligence/machine-learning/unsupervised-learning/README.md)
  * Clustering 
* [Reinforcement Machine Learning](/theory/data-science/artificial-intelligence/machine-learning/reinforcement-learning/README.md)
* Transfer Machine Learning
  * Pre-training
  * Domain adaptation
  * Fine-tuning
  * Prompting
  * In-context learning
* Zero-Shot Machine Learning

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
Featurization includes ingesting, cleaning, and preprocessing data. It also includes feature encoding. 

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