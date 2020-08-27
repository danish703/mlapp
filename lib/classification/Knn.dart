import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/KnnCode.dart';
import 'package:machinelearningalgorithm/classification/code/Logistic.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class KNN extends StatelessWidget {
  static const routeName = '/knn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "K-Nearest Neighbor",
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(KnnCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                textbox(text: "KNN- K-Nearest Neighbors is one of the simples Supervised Machine Learning algorithms mostly used for classification. It classifies a data point on how its neighbors are classified. It stores all available cases and classifies a new case based on similarity measures."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:knn+"fig1.png"
              ),
              textbox(text: "K in KNN is parameter that refers to the number of nearest neighbors to include the majority voting process."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:knn+"fig2.png"
              ),
              textbox(text: "A data point is classified by majority votes from its nearest neighbors. Here the data point will be classified to the Red wine since out of 5 points, 4 points are red wine."),
              textbox(text: "KNN Algorithm is based on feature similarity: choosing the right value of k is process called parameter tuning and is important for better accuracy."),
              Heading(title: "How does we choose the value of k ?",),
              Divider(),
              textbox(text: "1.	Sqrt(n), where n is the total number of data points"),
              textbox(text: "2.	Odd value of K is selected to avoid confusion between two classes of data."),
              Heading(title: "We use the KNN when",),
              Divider(),
              textbox(text: "a.	We have label data."),
              textbox(text: "b.	Data is error free"),
              textbox(text: "c. Dataset size is small"),
              Heading(title: "Algorithm:",),
              Divider(),
              textbox(text: "1.	Select the number K of the neighbors"),
              textbox(text: "2.	Calculate the Euclidean distance of K number of neighbors"),
              textbox(text: "3.	Take the K nearest neighbors as per the calculated Euclidean distance."),
              textbox(text: "4.	Among these k neighbors, count the number of the data points in each category."),
              textbox(text: "5.	Assign the new data points to that category for which the number of the neighbor is maximum."),
              textbox(text: "6.	Model is ready."),
              Reference(
                url: ["Src: https://www.slideshare.net/Simplilearn/knearest-neighbor-classification-algorithm-how-knn-algorithm-works-knn-algorithm-simplilearn"],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
