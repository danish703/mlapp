import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class LogisticCode extends StatelessWidget {
  static const routeName = '/logisticcode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Logistic Regression"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: logisticcode+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.load the dataset and view top 5 records",),
              CodeImage(url: logisticcode+"dataset_code.png",),
              SizedBox(height: 10,),
              CodeImage(url: logisticcode+"dataset.png",),
              SizedBox(height: 10,),
              textbox(text: "Here we only take the Age and EstimatedSalary as the features for the purches"),
              Heading(title: "3.Split the data into features and target varibale",),
              CodeImage(url: logisticcode+"split.png",),
              SizedBox(height: 10,),
              Heading(title: "4.Splitting the dataset into the Training set and Test set",),
              CodeImage(url: logisticcode+"tt.png",),
              SizedBox(height: 10,),
              Heading(title: "5.Feature Scaling",),
              CodeImage(url: logisticcode+"fs.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Train the Logistic model using training set",),
              CodeImage(url: logisticcode+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Predicting the Test set results",),
              CodeImage(url: logisticcode+"predict.png",),
              SizedBox(height: 10,),
              Heading(title: "8. Making the Confusion Matrix",),
              CodeImage(url: logisticcode+"confusion.png",),
              SizedBox(height: 10,),
              Heading(title: "9.Visualising the Training set results",),
              CodeImage(url: logisticcode+"vt.png",),
              SizedBox(height: 10,),
              CodeImage(url: logisticcode+"vtf.png",),
              SizedBox(height: 10,),
              Heading(title: "10.Visualising the Test set results",),
              CodeImage(url: logisticcode+"vte.png",),
              SizedBox(height: 10,),
              CodeImage(url: logisticcode+"vtef.png",),
              SizedBox(height: 10,),
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
