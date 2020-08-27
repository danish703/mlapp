import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class HierarchyCode extends StatelessWidget {
  static const routeName = '/hierarchycode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Hierarchical Clustering"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: hierarchycode+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.Load the dataset and view top 5 records",),
              CodeImage(url: hierarchycode+"dataset.png",),
              SizedBox(height: 10,),
              Heading(title: "3.Train the Hierarchical Clustering model using dataset",),
              CodeImage(url: hierarchycode+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "5.Visualising the clusters",),
              CodeImage(url: hierarchycode+"vs.png",),
              SizedBox(height: 10,),
              CodeImage(url: hierarchycode+"gf.png",),
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
