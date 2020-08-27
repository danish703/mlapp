import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class Numpy extends StatelessWidget {
  static const routeName = '/numpy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Numpy Intro"
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "NumPy is a library for the Python programming language, adding support for large, multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays. Wikipedia"),
              Heading(title: "Import numpy",),
              CodeImage(url: numpy+"imp.png",),
              SizedBox(height: 10,),
              Heading(title: "Zeros - initialized with zero values",),
              CodeImage(url: numpy+"zeros.png",),
              SizedBox(height: 10,),
              Heading(title:"Ones - initialized with one values"),
              CodeImage(url: numpy+"ones.png",),
              SizedBox(height: 10,),
              Heading(title: "Empty - uninitialized array ( contains garbage value ) ",),
              CodeImage(url: numpy+"empty.png",),
              SizedBox(height: 10,),
              Heading(title: "Full - initialized with value passed ",),
              CodeImage(url: numpy+"full.png",),
              SizedBox(height: 10,),
              Heading(title: "Random - different methods to initialize random values",),
              CodeImage(url: numpy+"random.png",),

              SizedBox(height: 10,),
              CodeImage(url: numpy+"random2.png",),
              Heading(title: "lin_space - generate equally spaced numbers between start & stop values ",),
              CodeImage(url: numpy+"lin.png",),
              Heading(title: "Access",),
              Divider(),
              Heading(title: "Acess all rows all columns",),
              CodeImage(url: numpy+"all.png",),
              Heading(title: "First row but all columns",),
              CodeImage(url: numpy+"frac.png",),
              Heading(title: "Particular row but all columns",),
              CodeImage(url: numpy+"prac.png",),
              Heading(title: "All row but Particular columns",),
              CodeImage(url: numpy+"arpc.png",),
              Heading(title: "Concatenation",),
              Divider(),
              textbox(text: "● Axis = 0 means vertical"),
              textbox(text: "● Axis = 1 means horizontal"),
              textbox(text: "● Concatenate - join numpy array along provided axis "),
              textbox(text: "● Hstack - joining numpy array horizontally"),
              textbox(text: " ● Vstack - joining numpy array vertically"),
              textbox(text: "● For any of these operations to happen, the joining edge should be of shape size.3 X 2 matrix hstacks with 3 X 5"),
              CodeImage(url: numpy+"concate.png",),
              Heading(title: "Splitting"),
              Divider(),
              textbox(text: "● Splits array into subarrays"),
              textbox(text: "● Split - Splits the array as per axis mentioned"),
              textbox(text: "● Hsplit - This splits the horizontal axis"),
              textbox(text: "● Vsplit - This splits the vertical axis"),
              CodeImage(url: numpy+"split.png",),
              Heading(title: "Shape, Size, ndim",),
              Divider(),
              CodeImage(url: numpy+"shp.png",),
              Heading(title: "Reshaping",),
              textbox(text: "● Learning algorithms expects data in certain shape & dimension"),
              textbox(text: "● Using reshaping utility we can convert data into desired shape."),
              textbox(text: "● But, the desired transformation will also be of same size"),
              textbox(text: "● Adding 1 dimensions will not alter data size"),
              CodeImage(url: numpy+"resahpe.png",),
              Heading(title: "Utility Functions",),
              textbox(text: "NumPy has a huge list of mathematical functions to make implementing machine learning algorithms very easy  A few of them are "),
              SizedBox(height: 10,),
              Heading(title: "max() <-- return max value of array"),
              CodeImage(url: numpy+"max.png",),
              SizedBox(height: 10,),
              Heading(title: "min() <-- return min value of array"),
              CodeImage(url: numpy+"min.png",),
              SizedBox(height: 10,),
              Heading(title: "mean() <-- return average value of array"),
              CodeImage(url: numpy+"mean.png",),
              Heading(title: "std() <-- return standard deviation of array"),
              CodeImage(url: numpy+"std.png",),
              SizedBox(height: 10,),
              Heading(title: "dot() <-- return dot product of two matrix"),
              CodeImage(url: numpy+"dot.png",),
              SizedBox(height: 10,),
              Heading(title: "sqrt() <-- return sqaure root of the each element of array"),
              CodeImage(url: numpy+"sqrt.png",),
              SizedBox(height: 10,),
              Heading(title: "Broadcasting",),
              Divider(),
              textbox(text: "● Single row matrix are known as vectors"),
              textbox(text: "● Broadcasting is a technique using which NumPy does mathematical computation on data of different shapes & dimension"),
              textbox(text: "● We might need to reshape the data sometimes to enable broadcasting"),
              textbox(text: "Some example of Broadcasting "),
              CodeImage(url: numpy+"broad1.png",),
              Divider(),
              CodeImage(url: numpy+"borad2.png",),
              textbox(text: "There are other lots of other advance features in numpy array you can learn form numpy official website"),
              Reference(url: ["https://numpy.org/"]),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
