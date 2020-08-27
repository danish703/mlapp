import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machinelearningalgorithm/classification/Knn.dart';
import 'package:machinelearningalgorithm/classification/LogisticRegression.dart';
import 'package:machinelearningalgorithm/classification/code/DecisionTree.dart';
import 'package:machinelearningalgorithm/classification/code/KnnCode.dart';
import 'package:machinelearningalgorithm/classification/code/Logistic.dart';
import 'package:machinelearningalgorithm/classification/code/NaiveBayesCode.dart';
import 'package:machinelearningalgorithm/classification/code/randomforest.dart';
import 'package:machinelearningalgorithm/classification/code/svmcode.dart';
import 'package:machinelearningalgorithm/classification/decisiontree.dart';
import 'package:machinelearningalgorithm/classification/naivebayes.dart';
import 'package:machinelearningalgorithm/classification/randomforest.dart';
import 'package:machinelearningalgorithm/classification/svm.dart';
import 'package:machinelearningalgorithm/clustering/code/hierarchycode.dart';
import 'package:machinelearningalgorithm/clustering/code/kmeancode.dart';
import 'package:machinelearningalgorithm/clustering/hierarchy.dart';
import 'package:machinelearningalgorithm/clustering/kmean.dart';
import 'package:machinelearningalgorithm/linearmodel/code/MLR.dart';
import 'package:machinelearningalgorithm/linearmodel/code/PLR.dart';
import 'package:machinelearningalgorithm/linearmodel/code/SLM.dart';
import 'package:machinelearningalgorithm/linearmodel/linearmodel.dart';
import 'package:machinelearningalgorithm/linearmodel/multiplelinearregression.dart';
import 'package:machinelearningalgorithm/linearmodel/polynomialregression.dart';
import 'package:machinelearningalgorithm/numpy/matplotlib.dart';
import 'package:machinelearningalgorithm/numpy/numpy.dart';
import 'package:machinelearningalgorithm/numpy/pandas.dart';
import 'package:machinelearningalgorithm/screen/home.dart';
import 'package:machinelearningalgorithm/terminology/DRT.dart';
import 'package:machinelearningalgorithm/terminology/gd.dart';
import 'package:machinelearningalgorithm/terminology/pipeline.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      LinearModel.routeName: (ctx) => LinearModel(),
      SLM.routeName: (ctx) => SLM(),
      MultipleLinearRegression.routeName: (ctx) => MultipleLinearRegression(),
      MLR.routeName: (ctx) => MLR(),
      PolyNomialRegression.routeName: (ctx) => PolyNomialRegression(),
      PLR.routeName: (ctx) => PLR(),
      DecisionTree.routeName: (ctx) => DecisionTree(),
      RandomForest.routeName: (ctx) => RandomForest(),
      NaiveBayes.routeName: (ctx) => NaiveBayes(),
      NaiveBayesCode.routeName: (ctx) => NaiveBayesCode(),
      SVM.routeName: (ctx) => SVM(),
      SVMCode.routeName: (ctx) => SVMCode(),
      Kmean.routeName: (ctx) => Kmean(),
      DecisionTreeCode.routeName: (ctx) => DecisionTreeCode(),
      RandomForestCode.routeName: (ctx) => RandomForestCode(),
      LogisticRegression.routeName: (ctx) => LogisticRegression(),
      LogisticCode.routeName: (ctx) => LogisticCode(),
      KNN.routeName: (ctx) => KNN(),
      KnnCode.routeName: (ctx) => KnnCode(),
      Kmean.routeName: (ctx) => Kmean(),
      KMeanCode.routeName: (ctx) => KMeanCode(),
      Hierarchy.routeName: (ctx) => Hierarchy(),
      HierarchyCode.routeName: (ctx) => HierarchyCode(),
      Numpy.routeName: (ctx) => Numpy(),
      Pandas.routeName: (ctx) => Pandas(),
      Matplotlib.routeName: (ctx) => Matplotlib(),
      Pipeline.routeName: (ctx) => Pipeline(),
      GradientDescent.routeName: (ctx) => GradientDescent(),
      DRT.routeName: (ctx) => DRT(),
    },
    theme: ThemeData(
      fontFamily: 'Nexa',
      textTheme: TextTheme(
        bodyText2: TextStyle(fontWeight: FontWeight.w500),
      ),
      primaryColor: Colors.deepOrangeAccent,
    ),
    home: HomeScreen(),
  ));
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}
