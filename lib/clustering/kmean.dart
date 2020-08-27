import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/clustering/code/kmeancode.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';
class Kmean extends StatelessWidget {
  static const routeName = '/kmean';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "K-Mean Clustering"
      ),
      drawer: myDrawer(),
      floatingActionButton:FloatButton(
        onPressed: (){
          Navigator.of(context).pushNamed(KMeanCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "K-Means clustering intends to partition n objects into k clusters in which each object belongs to the cluster with the nearest mean. This method produces exactly k different clusters of greatest possible distinction. The best number of clusters k leading to the greatest separation (distance) is not known as a priori and must be computed from the data. The objective of K-Means clustering is to minimize total intra-cluster variance, or, the squared error function:"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig1.png"),
              Heading(title: "Algorithm",),
              textbox(text: "1. Clusters the data into k groups where k  is predefined."),
              textbox(text: "2. Select k points at random as cluster centers."),
              textbox(text: "3. Assign objects to their closest cluster center according to the Euclidean distance function."),
              textbox(text: "4. Calculate the centroid or mean of all objects in each cluster."),
              textbox(text: "5. Repeat steps 2, 3 and 4 until the same points are assigned to each cluster in consecutive rounds."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig2.png"),
              textbox(text: "K-Means is relatively an efficient method. However, we need to specify the number of clusters, in advance and the final results are sensitive to initialization and often terminates at a local optimum. Unfortunately there is no global theoretical method to find the optimal number of clusters. A practical approach is to compare the outcomes of multiple runs with different k and choose the best one based on a predefined criterion. In general, a large k probably decreases the error but increases the risk of overfitting."),
              Heading(title: "Example:",),
              textbox(text: "Suppose we want to group the visitors to a website using just their age (one-dimensional space) as follows:"),
              Heading(title: "n = 19",),
              textbox(text: "15,15,16,19,19,20,20,21,22,28,35,40,41,42,43,44,60,61,65"),
              textbox(text: "Initial clusters (random centroid or average):"),
              textbox(text: "k = 2"),
              textbox(text: "c1 = 16"),
              textbox(text: "c2=22"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "dis.png"),
              Heading(title: "Iteration 1",),
              textbox(text: "c1 = 15.33"),
              textbox(text: "c2  = 36.25"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig3.png"),
              Heading(title: "Iteration 2",),
              textbox(text: "c1 = 18.56"),
              textbox(text: "c2  = 45.90"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig4.png"),
              Heading(title: "Iteration 3",),
              textbox(text: "c1 = 19.50"),
              textbox(text: "c2  = 47.89"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig5.png"),
              Heading(title: "Iteration 4",),
              textbox(text: "c1 = 19.50"),
              textbox(text: "c2  = 47.89"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: kmeanurl + "fig6.png"),
              textbox(text: "No change between iterations 3 and 4 has been noted. By using clustering, 2 groups have been identified 15-28 and 35-65. The initial choice of centroids can affect the output clusters, so the algorithm is often run multiple times with different starting conditions in order to get a fair view of what the clusters should be."),
              Divider(),
              Reference(
                url:["Source: https://www.saedsayad.com/clustering_kmeans.htm"]
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),
    );
  }
}
