import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/randomforest.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class RandomForest extends StatelessWidget {
  static const routeName = '/random-forest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: 'Random Forest Classifier'
      ),
      drawer: myDrawer(),
      floatingActionButton:FloatButton(
        onPressed: (){
          Navigator.of(context).pushNamed(RandomForestCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "Random forest is the bagging techniques. It is used for both classification and regression. It uses the decision tree as the base algorithm to classify or predict the data. For more depth to understand suppose we have datasets. "),
              textbox(text: "For the Radom forest classifier, we use the random sampling to select the random rows and features from dataset"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:randomforesturl+"datasets.png"
              ),
              textbox(text: "This algorithm selects the random rows and random features form the datasets and passed to the decision tree as shown in above fig, similarly again algorithm selects the rows and features using random sampling (row and features may repeat) and pass it to another decision tree, in same way it choose the data using random sampling and pass it to the all the decision tree that is specified during the program for example here 4 tree D1,D2,D3 and D4 in this case here."),
              textbox(text: "After train the model, for classify the new data we pass the data to all the decision tree and each decision tree will classify the data as show in fig and the final classification will be the class with majority vote. "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:randomforesturl+"randomforest.png"
              ),
              Divider(),
              textbox(text: "While for other hand for the regression the output of the different decision tree will be the continues numerical values and their mean (most of the time) will be the final prediction. "),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
