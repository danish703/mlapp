import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/linearmodel/code/MLR.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class MultipleLinearRegression extends StatefulWidget {
  static const routeName = '/multiple-linear-regression';

  @override
  _MultipleLinearRegressionState createState() =>
      _MultipleLinearRegressionState();
}

class _MultipleLinearRegressionState extends State<MultipleLinearRegression> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(title: 'Multiple Linear Regression'),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MLR.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(
                  text:
                      "Insisted of having only one dependent variable like in simple linear regression model in multiple linear regression model there is more than one independent variable which can be expressed mathematically as "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=apnY4OSL3ZTTV7ICYQvwibjAFfrYqkkh"),
              textbox(
                  text:
                      "Where y is dependent variable and xi is independent variable and c is intercept (constant)."),
              textbox(
                  text:
                      "Multiple linear regression model is based on the following assumption."),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: <Widget>[
                    textbox(
                        text:
                            "1.	There is linear relationship between the dependent variable and independent variable."),
                    textbox(
                        text:
                            "2.	The independent variable is not too highly correlated with each other."),
                    textbox(
                        text:
                            "3.	Residual error should be normally distributed with mean 0 and variance."),
                  ],
                ),
              ),
              textbox(text: "The values fit by the equation"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=kFqUjPeUyJe9kGqxfiJKkmFXXD2sBpna"),
              textbox(
                  text:
                      "are denoted Y' and the residuals error(ei) are equal to Y-Y' the difference between the observed and fitted values."),
              textbox(text: "The variance may be estimated by s² = "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=aKEHlXUtZWEOAGygiH90QtPjyjNxJD8S"),
              textbox(text: "also known as the mean-squared error (or MSE). "),
              textbox(
                  text:
                      "The estimate of the standard error s is the square root of the MSE."),
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
