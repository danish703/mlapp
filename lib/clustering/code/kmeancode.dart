import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class KMeanCode extends StatelessWidget {
  static const routeName = '/kmeanCode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "K-Mean"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: kemancode+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.Load the dataset and view top 5 records",),
              CodeImage(url: kemancode+"dataset.png",),
              SizedBox(height: 10,),
              CodeImage(url: kemancode+"datasettable.png",),
              SizedBox(height: 10,),
              Heading(title: "3.Using the elbow method to find the optimal number of clusters",),
              CodeImage(url: kemancode+"elbow.png",),
              SizedBox(height: 10,),
              CodeImage(url: kemancode+"gp.png",),
              SizedBox(height: 10,),
              Heading(title: "4.Train the K-Mean model using dataset",),
              CodeImage(url: kemancode+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "5.Visualising the clusters",),
              CodeImage(url: kemancode+"vs.png",),
              SizedBox(height: 10,),
              CodeImage(url: kemancode+"gf.png",),
              Reference(
                url: ["Dataset source: https://www.kaggle.com/shwetabh123/mall-customers"],
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),
    );
  }
}
