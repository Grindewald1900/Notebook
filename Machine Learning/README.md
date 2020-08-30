# Machine Learning
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning.jpg" alt="Logo" width="720" height="360">
</a></p>

<!-- TABLE OF CONTENTS -->

## Table of Contents
* [1. Introduction of Deep Learning](introduction_of_Deep_Learning)  
 &nbsp;&nbsp;&nbsp;&nbsp;  [1.1 Some definations](some_definations)  
 &nbsp;&nbsp;&nbsp;&nbsp;  [1.2 Three Steps for Deep Learning](three_Steps_for_Deep_Learning )  
 
* [2. Tips for Training DNN](#2-tips_for_Training_DNN)  
 &nbsp;&nbsp;&nbsp;&nbsp;  [2.1  Keras](keras)  
 &nbsp;&nbsp;&nbsp;&nbsp;  [2.2  Tips_for_Deep Learning](tips_for_Deep_Learning)  
  
* [3. 3-Variants_of_Neural_Networks](#3-Variants_of_Neural_Networks)  
 &nbsp;&nbsp;&nbsp;&nbsp;  [2.1  Convolutional_Neural_Network_(CNN)](Convolutional_Neural_Network_(CNN))  
 &nbsp;&nbsp;&nbsp;&nbsp;  [2.1  Recurrent_Neural_Network_(RNN)](Recurrent_Neural_Network_(RNN))  

 



<!-- Introduction of Deep Learning -->
## 1-Introduction_of_Deep_Learning

### Some_definations
* **Neuron**  
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/1.png" alt="Logo" width="720" height="480">
</a></p>

* **Activation Function**  
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/2.png" alt="Logo" width="720" height="480">
</a></p>  

* **Neural Network**  

* **Weights**  

* **Bias**   

* **Activation function** 

* **Network parameters**   
Weights and biases are network parameters θ.   

* **Feedforward neural network** 
A feedforward neural network is an artificial neural network wherein connections between the nodes do not form a cycle. As such, it is different from its descendant: recurrent neural networks.
The feedforward neural network was the first and simplest type of artificial neural network devised. In this network, the information moves in only one direction, forward, from the input nodes, through the hidden nodes (if any) and to the output nodes. There are no cycles or loops in the network.

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/3.png" alt="Logo" width="720" height="480">
</a></p>

* **Softmax Layer**
The [softmax function](https://deepai.org/machine-learning-glossary-and-terms/softmax-layer)  is a function that turns a vector of K real values into a vector of K real values that sum to 1.

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/4.png" alt="Logo" width="720" height="480">
</a></p>

* **Loss Function**

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/5.png" alt="Logo" width="720" height="480">
</a></p>

* **Gradient Descent**
[Gradient descent](https://en.wikipedia.org/wiki/Gradient_descent) is a first-order iterative optimization algorithm for finding a local minimum of a differentiable function. 

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/6.png" alt="Logo" width="720" height="480">
</a></p>

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/7.png" alt="Logo" width="720" height="480">
</a></p>

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/8.png" alt="Logo" width="720" height="480">
</a></p>

* **Backpropagation**
In machine learning, [backpropagation](https://en.wikipedia.org/wiki/Backpropagation) is a widely used algorithm in training feedforward neural networks for supervised learning.  
It is also an efficient way to compute 𝜕𝐿 /𝜕𝑤.

* **Underfitting & Overfitting**
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/12.png" alt="Logo" width="720" height="480">
</a></p>

### Three_Steps_for_Deep_Learning   
* **1. Define a set of function**  
* **2. Estimate goodness of function**  
* **3. Pick the best function**  







## 2-Tips_for_Training_DNN

### Keras
[Keras](https://keras.io/getting_started/) is a deep learning API written in Python, running on top of the machine learning platform TensorFlow. It was developed with a focus on enabling fast experimentation. Being able to go from idea to result as fast as possible is key to doing good research.  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/11.png" alt="Logo" width="720" height="480">
</a></p> 
 
### Tips_for_Deep_Learning
* **Choosing proper loss**  
When using softmax output layer, choose 'cross entropy'

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/13.png" alt="Logo" width="720" height="480">
</a></p>

* **Mini-batch**
[Mini-batch](https://machinelearningmastery.com/gentle-introduction-mini-batch-gradient-descent-configure-batch-size/) 
gradient descent is a variation of the gradient descent algorithm that splits the training dataset into small batches that are used to calculate model error and update model coefficients.  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/14.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/15.png" alt="Logo" width="720" height="480">
</a></p>  

* **New activation function**   

**[Why do we use an activation function?](https://blog.csdn.net/Leo_Xu06/article/details/53708647)**    
We understand that using an activation function introduces an additional step at each layer during the forward propagation. Now the question is – if the activation function increases the complexity so much, can we do without an activation function?

Imagine a neural network without the activation functions. In that case, every neuron will only be performing a linear transformation on the inputs using the weights and biases. Although linear transformations make the neural network simpler, but this network would be less powerful and will not be able to learn the complex patterns from the data.

`A neural network without an activation function is essentially just a linear regression model.`

Thus we use a non linear transformation to the inputs of the neuron and this non-linearity in the network is introduced by an activation function.

In the next section we will look at the different types of Activation Functions, their mathematical equations, graphical representation and python codes.
&nbsp;&nbsp;&nbsp;&nbsp;  

**Different kind of activation functions**  
`Binary Step`  
`Linear`  
`Sigmoid`  Used in hiden layers output   
[`Maxout`](https://blog.csdn.net/hjimce/article/details/50414467)  Activation function in maxout network can be any piecewise linear convex function, How many pieces depending on how many elements in a group.  
[`ReLU`](https://en.wikipedia.org/wiki/Rectifier_(neural_networks))  ReLU is a special case of Maxout, which is used in hiden layers output  
`Softmax`  used in classification layer  


* **Adaptive Learning Rate**
Popular & Simple Idea: Reduce the learning rate by some factor every few epochs.  
• At the beginning, we are far from the destination, so we use larger learning rate.  
• After several epochs, we are close to the destination, so we reduce the learning rate.  

* **[Adagrad](https://www.jiqizhixin.com/graph/technologies/7eab38a3-23ec-494c-a677-415b6f85e6c5)**

* **Momentum**
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/16.png" alt="Logo" width="720" height="480">
</a></p>  

### Recipe of Deep Learning(when result on testing data not satisfying)
* **Overfitting**  solution： Have more training data  
* **Early Stopping**   
* **Weight Decay** Our brain prunes out the useless link between neurons. Doing the same thing to machine’s brain improves the performance.  
http://keras.io/regularizers/
* **Dropout** Each time before updating the parameters, Each neuron has p% to dropout
* **Network Structure** 


## 3-Variants_of_Neural_Networks
### Convolutional_Neural_Network_(CNN)
<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/17.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/18.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/19.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/20.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/21.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/22.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/23.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/24.png" alt="Logo" width="720" height="480">
</a></p>  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/25.png" alt="Logo" width="720" height="480">
</a></p>  

### Recurrent_Neural_Network_(RNN)
* **The output of hidden layer are stored in the memory.**  
* **Memory can be considered as another input.**  

<p align="center"><a href="https://github.com/Grindewald1900/Notebook">
    <img src="/Image/Machine Learning/26.png" alt="Logo" width="720" height="480">
</a></p>  








