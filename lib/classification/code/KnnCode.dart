import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class KnnCode extends StatelessWidget {
  static const routeName = '/knncode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "K-Nearest Neighbor"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: knncode+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.load the datasets and split into target varibale and attribues",),
              CodeImage(url: knncode+"data.png",),
              SizedBox(height: 10,),
              Heading(title: "3.Splitting the dataset into the training set and test set",),
              CodeImage(url: knncode+"tt.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Feature Scaling",),
              CodeImage(url: knncode+"fs.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Train the KNN model on the training dataset",),
              CodeImage(url: knncode+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "8.Predicting the test set results",),
              CodeImage(url: knncode+"predict.png",),
              SizedBox(height: 10,),
              Heading(title: "9. Making the Confusion Matrix",),
              CodeImage(url: knncode+"confusion.png",),
              SizedBox(height: 10,),
              Heading(title: "10.Visualising the training set results",),
              CodeImage(url: knncode+"vt.png",),
              SizedBox(height: 10,),
              CodeImage(url: knncode+"vtf.png",),
              SizedBox(height: 10,),
              Heading(title: "11.Visualising the test set results",),
              CodeImage(url: knncode+"vte.png",),
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
