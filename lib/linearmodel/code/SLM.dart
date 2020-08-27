import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';

class SLM extends StatelessWidget {
  static const routeName ='/slm';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Simple Linear Regression"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1. Load the required library",),
              CodeImage(url: linearCodeurl+"loadlibrary.png",),
              SizedBox(height: 10,),
              Heading(title: "2. Prepare data and view top 5 record",),
              CodeImage(url: linearCodeurl+"loaddataset.png",),
              SizedBox(height: 10,),
              CodeImage(url: linearCodeurl+"dataframe.png",),
              SizedBox(height: 10,),
              Heading(title: "3. Split the features and target variable",),
              CodeImage(url: linearCodeurl+"tv.png",),
              SizedBox(height: 10,),
              Heading(title: "4.Plot the Scatter diagram of the dataset",),
              CodeImage(url: linearCodeurl+"sc.png",),
              SizedBox(height: 10,),
              CodeImage(url: linearCodeurl+"scg.png",),
              SizedBox(height: 10,),
              Heading(title: "5.Split data in train test",),
              CodeImage(url: linearCodeurl+"tt.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Create the model, train and predict with test data",),
              SizedBox(height: 10,),
              CodeImage(url: linearCodeurl+"ctp.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Visualize in grpah",),
              CodeImage(url: linearCodeurl+"sl.png",),
              SizedBox(height: 10,),
              CodeImage(url: linearCodeurl+"gf.png",),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
