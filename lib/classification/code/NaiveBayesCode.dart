import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class NaiveBayesCode extends StatelessWidget {
  static const routeName = '/naivebayescode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Naive Bayes"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: naiveCodeUrl+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.load the datasets and split into target varibale and attribues",),
              CodeImage(url: naiveCodeUrl+"data.png",),
              SizedBox(height: 10,),
              Heading(title: "3.Splitting the dataset into the Training set and Test set",),
              CodeImage(url: naiveCodeUrl+"tt.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Feature Scaling",),
              CodeImage(url: naiveCodeUrl+"fs.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Training the Naive Bayes model on the Training set",),
              CodeImage(url: naiveCodeUrl+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "8.Predicting the Test set results",),
              CodeImage(url: naiveCodeUrl+"predict.png",),
              SizedBox(height: 10,),
              Heading(title: "9. Making the Confusion Matrix",),
              CodeImage(url: naiveCodeUrl+"confusion.png",),
              SizedBox(height: 10,),
              Heading(title: "10.Visualising the Training set results",),
              CodeImage(url: naiveCodeUrl+"vt.png",),
              SizedBox(height: 10,),
              CodeImage(url: naiveCodeUrl+"vtf.png",),
              SizedBox(height: 10,),
              Heading(title: "11.Visualising the Test set results",),
              CodeImage(url: naiveCodeUrl+"vte.png",),
              SizedBox(height: 10,),
              CodeImage(url: naiveCodeUrl+"vtef.png",),
              SizedBox(height: 10,),
              Reference(
                url: ["Dataset Source: https://www.kaggle.com/rakeshrau/social-network-ads"],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
