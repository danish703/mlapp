import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';

class MLR extends StatelessWidget {
  static const routeName ='/MLR';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
          title: "Multiple Linear Regression"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: multipleCodeurl+"library.png",),
              SizedBox(height: 10,),
              Heading(title: "2.Load dataset and view top 5 record",),
              CodeImage(url: multipleCodeurl+"df.png",),
              SizedBox(height: 10,),
              CodeImage(url: multipleCodeurl+"datasetmlr.png",),
              SizedBox(height: 10,),
              Heading(title: "2.Draw the scatter diagram of each independent varaible and target variable",),
              CodeImage(url: multipleCodeurl+"plt.png",),
              SizedBox(height: 10,),
              CodeImage(url: multipleCodeurl+"fig.png",),
              SizedBox(height: 10,),
              Heading(title: "3. Select the features and split into dependent and independent variable",),
              CodeImage(url: multipleCodeurl+"sp.png",),
              SizedBox(height: 10,),
              Heading(title: "4.Split data into train-test, load model and train model with train data",),
              CodeImage(url: multipleCodeurl+"split.png",),
              SizedBox(height: 10,),
              Heading(title: "5.test the model with test data and check the intercept,coefficient and MSE of model",),
              CodeImage(url: multipleCodeurl+"final.png",),
              SizedBox(height: 10,),
              Reference(
                url: ["Dataset Source: https://www.kaggle.com/ashydv/advertising-dataset"],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
