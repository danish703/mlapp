import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/svmcode.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class SVM extends StatelessWidget {
  static const routeName = '/svm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Support Vector Machine",
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SVMCode.routeName);
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
                      "A support vector machine (SVM) is a supervised machine learning model. mainly it is used for the classification but it also used for regression as well. It used the hyperplane to classify the data."),
              textbox(
                  text:
                      "In order to unsderstand how how SVM works lets take an example, suppose we have dataset which is linearly separable as shown in fig,"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig1.png"),
              textbox(
                  text:
                      "Above fig the data is lineary seperable by the line(hyperplane) but there may be the multiple hyperplane which can linearly separate the dataset as shown in fig,"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig2.png"),
              textbox(
                  text:
                      "But we must choose the optimal hyperplane so that new data can not be miss classified for that lets draw the two more hyperplane as show in fig (A and B) in such a way it must be parallel to the hyperplane and must passes through the nearest point of the each class from hyperplane. "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig3.png"),
              textbox(
                  text:
                      "The distance between the hyperplane and two parallel line (A and B) is called margin distance. And the hyperplane which has the highest margin distance will be the optimal hyperplane. On the basis of that hyperplane will classify new data points."),
              Heading(
                title:
                    "Note: the nearest point through which our two parallel line A and B passes are called support vector.",
              ),
              Heading(
                title: "Mathematics behind the SVM,",
              ),
              textbox(
                  text:
                      "Let suppose we have the training dataset {(xi,yi)i=1,2….,n  } where Xi are the features and Yi ϵ (-1,1) be separated by the hyperplane with margin distance ρ. Then each of the training example (Xi,Yi)"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig4.png"),
              textbox(
                  text:
                      "For every support vector Xs, the above inequality is an equality. After rescaling w and b by ρ/2 in the equality, you obtain the distance between each Xs. The hyperplane is:"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig5.png"),
              textbox(
                  text:
                      "Then the margin can be expressed through (rescaled) w and b as: "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fr.png"),
              textbox(
                  text:
                      "Now, you can formulate the quadratic optimization problem:"),
              textbox(text: "Find w and b such that  "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: svmUrl + "fr.png"),
              textbox(text: "is maximized and for all (Xi, Yi), i=1..n"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig6.png"),
              SizedBox(height: 10,),
              textbox(text: "Find w and b such that "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: svmUrl + "fm.png"),
              textbox(text: " is minimized and for all (Xi, Yi), i=1..n"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  imageUrl: svmUrl + "fig6.png"),
              textbox(
                  text:
                      "However, in real world scenario most of the time the data will not linearly separable for example,"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig8.png"),
              SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig9.png"),
              textbox(
                  text:
                      "The problem which are not linearly separable in that case SVM uses the svm kernel to convert the problem from lower dimension to higher dimension like in fig."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: svmUrl + "fig10.png"),
              Divider(),
              Reference(url: ["Image Source: simplilearn.com "]),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
