import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/linearmodel/code/SLM.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/formula.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class LinearModel extends StatefulWidget {
  static const routeName = '/linear-model';
  @override
  _LinearModelState createState() => _LinearModelState();
}

class _LinearModelState extends State<LinearModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
          context: context,
          title: "Linear Model",
          leading: IconButton(
            icon: Icon(Icons.dehaze),
          )),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SLM.routeName);
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
                      "Linear Regression algorithm is the supervised Machine learning algorithm which used for the prediction by creating the model."),
              textbox(
                  text:
                      "This algorithm is used to predict the target variable by finding the best fit line between dependent and independent variable. The best fit is the line with minimum residual error form all points."),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=RuX4B1A83AaKiLh02C6ij2A4bSKJuRa5",
              ),
              Heading(
                title: "1. Simple Linear Regression model",
              ),
              textbox(
                  text:
                      "In this model there can be only one independent variable, basic mathematical equation for the simple linear regression model is "),
              formula("y=mx+c"),
              SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=NWaSjPSfQISAGQDEu7U865JhrwMbKgJB",
              ),
              textbox(
                  text:
                      "Where \n y= dependent variable \n x= independent variable\n m=slope of the line"),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=63R51592h6qLhKnWuEAwenymt819kDcq",
              ),
              textbox(
                  text:
                      "c=coefficient of the line \n (where line cross the 0-axis)"),
              textbox(
                  text:
                      "For more mathematical understanding of the simple linear regression model. Let’s take an example suppose we have the below example where we have to determine the profit on the basis of the expenditure on Research and development of particular orgnaization"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=WdbjIKlXOjtmywPoldydSvBlkKEHN29X"),
              SizedBox(
                height: 10,
              ),
              textbox(
                  text:
                      "Here R&D is the independent variable and Profit is the dependent variable which depends on R&D.  "),
              textbox(text: "Now our Linear equation will be the "),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=eXXReMCpFvBjuXy3msKFsICsW8SQBUlJ",
              ),
              textbox(
                  text:
                      "Now we have to calculate the value of slope and coefficient "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=YP6afVKQI3sRWsktBQ8D3AVPnSWGRqAY"),
              SizedBox(
                height: 10,
              ),
              textbox(
                  text:
                      "Now we can use the value of m and c to the new R&D data points to predict the profit"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=Xu4jw6dPLZ29FkxTrXxxqoNh2R6SzdSj"),
              Heading(
                title: "Sum of squared error",
              ),
              Divider(),
              textbox(
                  text:
                      "There is some value different between the actual value of Profit and Predicted Profit. The difference between Profit and Predicted Profit is called the Residual error and if we sum the error for all the data and square it is called the sum of square error."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=1od1Slvpxg0PHUfLCEPmU6CTCS0G3EFY"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=4PeVYNyoiCfky0Nsh2TRNMMvTahwrJ0m"),
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
