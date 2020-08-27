import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/DecisionTree.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class DecisionTree extends StatelessWidget {
  static const routeName = '/decisiontree';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Decision Tree",
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(DecisionTreeCode.routeName);
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
                      "Decision Tree belongs to the Supervised classification algorithm. The main motives of the decision tree algorithm is used to crate the training model which can be used to predict class or value of target variable by learning decision rule inferred from prior data (training data)."),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=K0B42WQlItb5M2WsV4E8OYO5BFMWh8r5",
              ),
              textbox(
                  text:
                      "Each branch represents the outcome of the test, and each leaf node represents the class label."),
              Heading(
                title: "Simply it follows the if then else construction",
              ),
              textbox(
                  text:
                      "Let’s take an example to elaborate how decision tree machine learning algorithm construct the decision tree to classify the data based on passed training data."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=RcEirVHFPMz82vJdFQOsNrMEah47fJOz"),
              textbox(
                  text:
                      "Suppose we have the above example now we have to construct the decision tree of the following data.Here the independent variable are outlook, humidity, wind whereas play is the targeted variable"),
              Heading(
                title:
                    "Now the big question is here, among the three-attribute which attribute is the root variable. Before that lets first understand the two parameters in which the decision tree depends",
              ),
              textbox(
                  text:
                      "Basically, Decision tree depends upon the “Entropy and Information gain of the attribute” the attribute with the highest gain will be the root node of the tree and it goes on iterative process. "),
              Heading(
                title: "Entropy",
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: <Widget>[
                    textbox(
                        text:
                            "•	Measurement of impurity of a collection of examples."),
                    textbox(
                        text:
                            "•	Depends on the distribution of random variable."),
                    textbox(
                        text:
                            "•	Measure the amount of information in random variable ")
                  ],
                ),
              ),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=ig1V84qJI75n62Ox6bR4AI9viNbewQeg"),
              SizedBox(
                height: 10,
              ),
              textbox(
                  text:
                      "The probility value given by the entropy is always ranging form 0 - 1"),
              Heading(
                title: "Information Gain",
              ),
              textbox(
                  text:
                      "Expected reduction in entropy caused by partitioning the example on attribute.High the information gain the more effective the attribute in the classifying training data."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=946FwHqAbr9yCbo6Yg4UkGXmJGdqqdT7"),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: Text(
                  "Confused?? Don’t worry we will solve the problem then have the clear idea.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Heading(
                title:
                    "Step 1: First calculate the entropy of the overall datasets",
              ),
              textbox(
                  text:
                      "Here total no. of observation = 14, No. of Yes = 9, and No. of no=9"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=P6T9PAHQde6UMywP9OgAtpfJViP8S3By"),
              Heading(
                  title:
                      " Step 2: Calculate the Gain of each independent variable "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=94PtqMwYlSczPF5d0dYhmLM2iidgJfK1"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=TNGH389MnM7U5qlYhGNYKl0lFpzmYrui"),
              textbox(
                  text:
                      "Similarly, for Temperature and humidity we can calculate the Gain then we get"),
              Heading(
                title:
                    "Step 3: Finally, the highest gain value will be the root node of the tree",
              ),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=uw05Vciutdy5179QJYITsK94JHuAlCpt"),
              textbox(
                  text:
                      "Now our decision tree will look like this as outlook is root node and overcast has direct yes because in if outlook is overcast according to the dataset the play value is always yes hence for the overcast of outlook there is direct leaf node"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=IkWspGb2GsBiOOgsVrmsny9sahJ27Wif"),
              textbox(
                  text:
                      "Now which attribute will be the next node for that now again we will calculate the information gain of each attribute after the drop of outlook column and rows having overcast value of outlook because as we know the record having overcast can directly classify to yes."),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=P6oOLyKw43ZXjOUoG7RsqdyqAvwqFKd9"),
              textbox(
                  text:
                      "Now you have repeated the same step from 1 to 3 for the following table then again, the highest gain will be the next node for our decision tree. "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) => Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=BHxxMY38s9mDZFF1iqPOwACEXmAZjVtL"),
              textbox(
                  text:
                      "Similar it goes on, this is how the mathematical intuition works behind the decision tree."),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Heading(
                title: "Gini Impurity",
              ),
              textbox(
                  text:
                      "Inisted of Entropy we can get impurity of random sampling using the gini impurity techniques which require less computational and apply in decision tree used in Random forest baging techniques, which can be calculated using following formula,"),
              CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ),
                imageUrl:
                    "http://filemanager.pytechsolution.com/filerun/wl/?id=9RAb3Jncujs1dnyWRpxSWl2KQMiZZaln",
              ),
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
                      "http://filemanager.pytechsolution.com/filerun/wl/?id=3NuXItaridzPo8nZ589aaXEsZqlF4qqx"),
              textbox(
                  text:
                      "the impurity probability given by the gini impurity method is always ranging form 0 to 0.5"),
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
