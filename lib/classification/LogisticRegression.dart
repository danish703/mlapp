import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/Logistic.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class LogisticRegression extends StatelessWidget {
  static const routeName = '/logisticregression';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Logistic Regression",
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LogisticCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(
                  text:
                      "Logistic regression is the supervised classification algorithm which is used to predict an outcome variable that is categorical from one or more categorical or continuous predictor variables. This algorithm is used because having a categorical outcome variable violates the assumption of linearity in normal regression it does not assume a linear relationship between dependent variable and Independent variable."),
              textbox(
                  text:
                      "Logistic regression does not make any assumptions of normality, linearity, and homogeneity of variance for the independent variables."),
              textbox(
                text: "There is two type of logistic regression",
              ),
              Heading(title: "1. Binary Logistic Regression"),
              textbox(
                  text:
                      "It used only when there are two dependent variables only. "),
              Heading(
                title: "2. Multinomial Logistic Regression",
              ),
              textbox(
                  text:
                      "It is used when the dependent or outcomes variable has two or more than two categories."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=8Fq0vKVDFNHedj7wEAJeGPvyvwpoeL0s"),
              Heading(
                title: "Sigmoid Activation",
              ),
              textbox(
                  text:
                      "In order to map predicted values to probabilities, we use the sigmoid function. The function maps any real value into another value between 0 and 1. In machine learning, we use sigmoid to map predictions to probabilities."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=yH8OtPbQW4hQaVFMPt2qMdyxLmZ6Qx7O"),
              textbox(text: "Where,"),
              textbox(
                  text:
                      "s(z)s(z) = output between 0 and 1 (probability estimate)"),
              textbox(
                  text:
                      "z = input to the function (your algorithm’s prediction e.g. mx + b)"),
              textbox(text: "e = base of natural log"),
              Heading(
                title: "Decision boundary",
              ),
              textbox(
                  text:
                      "The prediction function returns a probability score between 0 and 1. In order to map this to a discrete class (yes/no, win/lose), we select a threshold value or tipping point above which we will classify values into class 1 and below which we classify values into class 2."),
              textbox(text: "             p≥0.5, class=1       "),
              textbox(text: "             p<0.5, class=0       "),
              textbox(
                  text:
                      "For example, if our threshold was 0.5 and our prediction function returned 0.6, we would classify this observation as positive (1). If our prediction was 0.3, we would classify the observation as negative (1). For logistic regression with multiple classes we could select the class with the highest predicted probability."),
              Heading(
                title: "Multiclass logistic regression",
              ),
              Divider(),
              textbox(
                  text:
                      "Instead of y=0,1 lets expand definition so that y=0,1... n. Basically we re-run binary classification multiple times, once for each class."),
              textbox(
                  text:
                      "1.	Divide the problem into n+1 binary classification problem (+1 because the index starts at 0?)."),
              textbox(
                  text:
                      "2.	For each class Predict the probability the observations are in that single class."),
              textbox(text: "3.	prediction = max(probability of the classes)"),
              textbox(
                  text:
                      "For each sub-problem, we select one class (YES) and lump all the others into a second class (NO). Then we take the class with the highest predicted value."),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
