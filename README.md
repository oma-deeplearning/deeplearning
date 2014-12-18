deeplearning
============
A collective github project for deep learning source codes in different languages

It will be helpful if someone is just starting hands on experience with deep learning tutorials.

For MATLAB:
===========
The code is for MNIST. The dataset is not existing in the repository because it's big. You can download it from: http://yann.lecun.com/exdb/mnist/
Make sure after extracting the files to remove the extension of the file name, so you have four files named like this:
t10k-images-idx3-ubyte
t10k-labels-idx1-ubyte
train-images-idx3-ubyte
train-labels-idx1-ubyte

Full instructions: http://www.cs.toronto.edu/~hinton/MatlabForSciencePaper.html

To make it work on any dataset:
- Option 1: prepare 2 txt files:
Training set: train_data_file.txt
Test set: test_data_file.txt

The format shall be as follows:
For each example 2 lines are needed:
Target line: so if we have 2 target classes: 1 and 2, then for class 1 write 1,0 and class 2 write 0,1
Features line: comma separated features

Examples (old examples of mine for language identification task) are uploaded in the same folder on github.

- Option 2: replace the function DCONV_convert() with your own implementation that loads the dataset, then in the file makebatches.m, call the DCONV_convert function once for train data and another for test data.

