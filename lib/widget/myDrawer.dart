import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:machinelearningalgorithm/classification/Knn.dart';
import 'package:machinelearningalgorithm/classification/LogisticRegression.dart';
import 'package:machinelearningalgorithm/classification/decisiontree.dart';
import 'package:machinelearningalgorithm/classification/naivebayes.dart';
import 'package:machinelearningalgorithm/classification/randomforest.dart';
import 'package:machinelearningalgorithm/classification/svm.dart';
import 'package:machinelearningalgorithm/clustering/hierarchy.dart';
import 'package:machinelearningalgorithm/clustering/kmean.dart';
import 'package:machinelearningalgorithm/linearmodel/linearmodel.dart';
import 'package:machinelearningalgorithm/linearmodel/multiplelinearregression.dart';
import 'package:machinelearningalgorithm/linearmodel/polynomialregression.dart';
import 'package:machinelearningalgorithm/widget/titlewithline.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String currentrouteName = ModalRoute.of(context).settings.name;
    return Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 14.0),
          decoration: BoxDecoration(
            color:Theme.of(context).primaryColor,
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            title: Text("Machine Learing Algorithms",style: TextStyle(color: Colors.white),),
            subtitle: Text("Starter",style: TextStyle(color: Colors.white,fontSize: 12),),
          ),
        ),
        Container(
          color: currentrouteName == '/'
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(AntDesign.dashboard, color: Theme.of(context).primaryColor,),
            title: Text("Dashboard"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        Padding(padding: const EdgeInsets.only(left: 16.0),child: TitleWithLine("Linear Model")),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == LinearModel.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(AntDesign.dotchart, color: Theme.of(context).primaryColor,),
            title: Text("Simple Regression"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(LinearModel.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == MultipleLinearRegression.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(MaterialCommunityIcons.chart_multiline, color: Theme.of(context).primaryColor,),
            title: Text("Multiple Regression"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(MultipleLinearRegression.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == PolyNomialRegression.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(MaterialCommunityIcons.chart_bell_curve,color: Theme.of(context).primaryColor,),
            title: Text("Polynomial Regression"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(PolyNomialRegression.routeName);
            },
          ),
        ),
        Padding(padding: const EdgeInsets.only(left: 16.0),child: TitleWithLine("Classification")),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == LogisticRegression.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(AntDesign.dotchart, color: Theme.of(context).primaryColor,),
            title: Text("Logistic Regression"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(LogisticRegression.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == DecisionTree.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(MaterialCommunityIcons.file_tree, color: Theme.of(context).primaryColor,),
            title: Text("Decision Tree"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(DecisionTree.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == RandomForest.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(Entypo.flow_tree,color: Theme.of(context).primaryColor,),
            title: Text("Random Forest"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacementNamed(RandomForest.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == SVM.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(FontAwesome.support,color: Theme.of(context).primaryColor,),
            title: Text("SVM"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(SVM.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == NaiveBayes.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon( FontAwesome.steam,color: Theme.of(context).primaryColor,),
            title: Text("Naive Bayes"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(NaiveBayes.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == KNN.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(MaterialCommunityIcons.chart_multiline,color: Theme.of(context).primaryColor,),
            title: Text("K-Nearest Neighbor"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(KNN.routeName);
            },
          ),
        ),
        Padding(padding: const EdgeInsets.only(left: 16.0),child: TitleWithLine("Clustering")),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == Kmean.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(MaterialCommunityIcons.chart_multiline,color: Theme.of(context).primaryColor,),
            title: Text("K-Mean Clustering"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(Kmean.routeName);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0),
          color: currentrouteName == Hierarchy.routeName
              ? Colors.grey[200]
              : Colors.transparent,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 0.0),
            leading: Icon(FontAwesome5Solid.network_wired,color: Theme.of(context).primaryColor,),
            title: Text("Hierarchical Clustering"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(Hierarchy.routeName);
            },
          ),
        ),
      ],
    ),);
  }
}
