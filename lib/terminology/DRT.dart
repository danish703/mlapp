import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class DRT extends StatelessWidget {
  static const routeName = '/DRT';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Dimensionality Reduction Techniques"
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "Introduction",),
              textbox(text: "In machine learning as the features increase it may be hard to visualize training set and then work on it. Most of the cases features are correlated and hence redundant, this where this algorithm comes into play. It is the process of reducing the number of random variables under the consideration by obtaining set of principal variables."),
              textbox(text: "There are two components of dimensionality reduction."),
              Heading(title: "Featuer Selection",),
              textbox(text: "In this method try to find subset of original set feature to get smaller subset which can be used to model the problem."),
              Heading(title: "Featuer Extraction",),
              textbox(text: "This reduces the data in higher dimension space to lower dimension space"),
              SizedBox(height: 10,),
              textbox(text: "One of the most popular techniques for dimensionality reduction"),
              Heading(title: "Principal Component Analysis (PCA)",),
              Divider(),
              textbox(text: "In this method the data in higher dimension space is mapped to lower dimension space, the variable of data in lower dimension space should be maximum. In PCA we take the covariance matrix of the data points, then calculate eigen value and eigen vector of the covariance matrix,Eigen vector cross ponding to the largest eigen values are used to reconstruct a large fraction of variance of the original data."),
              textbox(text: "Hence, we are left with a lesser number of eigen vectors and there might have been some data loss in the process but the important variance should retain by the remaining eigen vector."),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
