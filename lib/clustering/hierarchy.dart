import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/clustering/code/hierarchycode.dart';
import 'package:machinelearningalgorithm/clustering/code/kmeancode.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';
class Hierarchy extends StatelessWidget {
  static const routeName = '/Hierarchical';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
          title: "Hierarchical Clustering"
      ),
      drawer: myDrawer(),
      floatingActionButton:FloatButton(
        onPressed: (){
          Navigator.of(context).pushNamed(HierarchyCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "Hierarchical Clustering Hierarchical clustering involves creating clusters that have a predetermined ordering from top to bottom. For example, all files and folders on the hard disk are organized in a hierarchy. There are two types of hierarchical clustering, Divisive and Agglomerative."),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: hierarchy + "fig1.png"),
              Heading(title: "Divisive method",),
              textbox(text: "In divisive or top-down clustering method we assign all of the observations to a single cluster and then partition the cluster to two least similar clusters. Finally, we proceed recursively on each cluster until there is one cluster for each observation. There is evidence that divisive algorithms produce more accurate hierarchies than agglomerative  algorithms in some circumstances but is conceptually more complex."),
              Heading(title: "Agglomerative method",),
              textbox(text: "In agglomerative or bottom-up clustering method we assign each observation to its own cluster. Then, compute the similarity (e.g., distance) between each of the clusters and join the two most similar clusters. Finally, repeat steps 2 and 3 until there is only a single cluster left. The related algorithm is shown below."),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: hierarchy + "fig2.png"),
              textbox(text: "Before any clustering is performed, it is required to determine the proximity matrix containing the distance between each point using a distance function. Then, the matrix is updated to display the distance between each cluster. The following three methods differ in how the distance between each cluster is measured."),
              Heading(title: "Single Linkage",),
              textbox(text: "In single linkage hierarchical clustering, the distance between two clusters is defined as the shortest distance between two points in each cluster. For example, the distance between clusters “r” and “s” to the left is equal to the length of the arrow between their two closest points."),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: hierarchy + "fig3.png"),
              Heading(title: "Complete Linkage",),
              textbox(text: "In complete linkage hierarchical clustering, the distance between two clusters is defined as the longest distance between two points in each cluster. For example, the distance between clusters “r” and “s” to the left is equal to the length of the arrow between their two furthest points."),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: hierarchy + "fig4.png"),
              Heading(title: "Average Linkage",),
              textbox(text: "In average linkage hierarchical clustering, the distance between two clusters is defined as the average distance between each point in one cluster to every point in the other cluster. For example, the distance between clusters “r” and “s” to the left is equal to the average length each arrow between connecting the points of one cluster to the other."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: hierarchy + "fig5.png"),
              Reference(
                url: ["full source: https://www.saedsayad.com/clustering_hierarchical.htm"],
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),
    );
  }
}
