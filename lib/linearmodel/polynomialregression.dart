import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/linearmodel/code/PLR.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class PolyNomialRegression extends StatelessWidget {
  static const routeName = '/polynomial';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Polynomial Regression",
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(PLR.routeName);
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
                      "Polynomial linear regression is similar to the multiple linear regression but with different power of independent variable in polynomial regression."),
              textbox(
                  text:
                      "Dataset will not always best fit by the linear line as like in fig at that case we use the polynomial regression algorithm to best fit the dataset."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=qGYzH340D80UErpqyTKHdOUdsmQVyXAv"),
              textbox(
                  text: "The equation  for the polynomial regression is given"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=BNO87eZ324B1pwTnubSAsaRtxDcqlLka"),
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
