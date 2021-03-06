import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class RandomForestCode extends StatelessWidget {
  static const routeName = '/randomforest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Random Forest"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.green,
                child: Text("Here also we are using the same problem as in Decision tree,",style: TextStyle(color: Colors.white)),
              ),
              Heading(title: "1.Import required library",),
              CodeImage(url: decisiontreecodeurl+"library.png",),
              SizedBox(height: 10,),
              Heading(title: "2.load the datasets and split into target varibale and attribues",),
              CodeImage(url: decisiontreecodeurl+"data.png",),
              SizedBox(height: 10,),
              textbox(text: "Since in our dataset there is categorical variable but our algorithm does not take categorical variable as a input so we need to convert this data into numerical data using label encoder."),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.green,
                child: Text("Here we are using the pandas get_dummies function to label encode later we will use sklearn",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10,),
              Heading(title: "3.list the categorical variable and Lable Encode the variable",),
              CodeImage(url: decisiontreecodeurl+"labelencode.png",),
              SizedBox(height: 10,),
              Heading(title: "4.Import the library for train test split and label encode using sklearn",),
              CodeImage(url: decisiontreecodeurl+"library2.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Assign the attribute and target varibale to X and y then label encode using sklearn and split the data into train test",),
              CodeImage(url: decisiontreecodeurl+"train_test.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Since in our datasets there is lots of missing value to handle it we are using Imputer function of sklearn with most_frequent strategy",),
              CodeImage(url: decisiontreecodeurl+"missinghandle.png",),
              SizedBox(height: 10,),
              Heading(title: "8. Import RandomForestClassifier class form sklearn, creat the model and train model using train data",),
              CodeImage(url: decisiontreecodeurl+"random_model.png",),
              SizedBox(height: 10,),
              Heading(title: "9.Test with test data and check accuracy",),
              CodeImage(url: decisiontreecodeurl+"ac.png",),
              SizedBox(height: 10,),
              Reference(url: ["Dataset Source: https://www.kaggle.com/uciml/horse-colic"],),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
