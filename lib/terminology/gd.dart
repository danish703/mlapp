import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class GradientDescent extends StatelessWidget {
  static const routeName = '/gradientdescent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Gradient Descent"
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "Introduction",),
              textbox(
                  text: "Consider the 3-dimensional graph below in the context of a cost function. Our goal is to move from the mountain in the top right corner (high cost) to the dark blue sea in the bottom left (low cost). The arrows represent the direction of steepest descent (negative gradient) from any given point–the direction that decreases the cost function as quickly as possible"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: "https://ml-cheatsheet.readthedocs.io/en/latest/_images/gradient_descent.png"
              ),
              textbox(
                  text: "Starting at the top of the mountain, we take our first step downhill in the direction specified by the negative gradient. Next we recalculate the negative gradient (passing in the coordinates of our new point) and take another step in the direction it specifies. We continue this process iteratively until we get to the bottom of our graph, or to a point where we can no longer move downhill–a local minimum."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: "https://ml-cheatsheet.readthedocs.io/en/latest/_images/gradient_descent_demystified.png"
              ),
              SizedBox(height: 10,),
              Heading(title: "Learning Rate",),
              textbox(
                  text: "The size of these steps is called the learning rate. With a high learning rate we can cover more ground each step, but we risk overshooting the lowest point since the slope of the hill is constantly changing. With a very low learning rate, we can confidently move in the direction of the negative gradient since we are recalculating it so frequently. A low learning rate is more precise, but calculating the gradient is time-consuming, so it will take us a very long time to get to the bottom."),
              SizedBox(height: 10,),
              Heading(title: "Cost Function",),
              textbox(
                  text: "A Loss Functions tells us “how good” our model is at making predictions for a given set of parameters. The cost function has its own curve and its own gradients. The slope of this curve tells us how to update our parameters to make the model more accurate."),
              SizedBox(height: 10,),
              Heading(title: "Step-by-step",),
              textbox(
                  text: "Now let’s run gradient descent using our new cost function. There are two parameters in our cost function we can control: m (weight) and b (bias). Since we need to consider the impact each one has on the final prediction, we need to use partial derivatives. We calculate the partial derivatives of the cost function with respect to each parameter and store the results in a gradient."),
              SizedBox(height: 10,),
              Heading(title: "Math",),
              textbox(text: "Given the cost function:"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: term + "f1.png"
              ),
              textbox(text: "The gradient can be calculated as:"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl: term + "f2.png"
              ),
              textbox(
                  text: "To solve for the gradient, we iterate through our data points using our new m and b values and compute the partial derivatives. This new gradient tells us the slope of our cost function at our current position (current parameter values) and the direction we should move to update our parameters. The size of our update is controlled by the learning rate."),

              Reference(url: [
                "full source: https://ml-cheatsheet.readthedocs.io/en/latest/gradient_descent.html"
              ]),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
