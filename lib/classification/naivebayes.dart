import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/code/NaiveBayesCode.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/floatButton.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class NaiveBayes extends StatelessWidget {
  static const routeName = '/naivebayes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Naive Bayes Classifier"
      ),
      drawer: myDrawer(),
      floatingActionButton:FloatButton(
        onPressed: (){
          Navigator.of(context).pushNamed(NaiveBayesCode.routeName);
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "Naive Bayes classifier is the classification algorithm based on the Bayes theorem with an assumption every pair of features being classified is independent of each other. This algorithm assumed that each feature on the datasets make the equal contribution to the outcome and features are independent to each other."),
              textbox(text: "Bayes’ Theorem finds the probability of an event occurring given the probability of another event that has already occurred. Bayes theorem mathematically can be expressed as"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"f1.png"
              ),
              SizedBox(height: 10,),
              textbox(text: "Let suppose we have the dataset "),
              SizedBox(height: 10,),
              textbox(text: "X = {X1,X2,X3,……,Xn}   features and  Y as target"),
              textbox(text: "Now, our Bayes formula will be"),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"f2.png"
              ),
              textbox(text: "Which can be expressed in the following,"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"f3.png"
              ),
              textbox(text: "This expression shows that "),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"f4.png"
              ),
              SizedBox(height: 10,),
              textbox(text: "Now, we need to create a classifier model. For this, we find the probability of given set of inputs for all possible values of the class variable y and pick up the output with maximum probability. This can be expressed mathematically as:"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"f5.png"
              ),
              textbox(text: "Let’s take an example for better understand, suppose we have the following datasets"),
              SizedBox(height: 10,),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"data.png"
              ),
              textbox(text: "Now lets suppose we have to classify the following data"),
              Container(padding:const EdgeInsets.all(8.0),color: Colors.green,width: double.infinity,child: textbox(text: "Outlook = Sunny,\nHumidity =  High\nWind = weak\nPlay = ?")),
              SizedBox(height: 10,),
              Heading(title: "First draw the Frequency table of each features with respect to target (Play)",),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"ft.png"
              ),
              SizedBox(height: 10,),
              Heading(title: "Likelihood table for outlook",),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"lt.png"
              ),
              textbox(text: "Likelihood of ‘Yes’ given sunny is,"),
              textbox(text: "p(yes | sunny) = P(Sunny|yes)* p(yes) / p(sunny) = 0.3*0.71 / 0.36 = 0.591"),
              textbox(text: "Similary likelihood of ‘No’ given sunny is "),
              textbox(text: " P(no|sunny)=p(sunny|no)*p(no)/p(sunny)"),
              textbox(text: "            = 0.4*0.36 / 0.36 = 0.4"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"lt2.png"
              ),
              textbox(text: "P(Yes|High) = 0.33 * 0.6 / 0.5 = 0.42"),
              textbox(text: "P(No|High) = 0.8*0.36/0.5 = 0.58"),
              CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, progress) =>
                      Center(
                        child: CircularProgressIndicator(
                          value: progress.progress,
                        ),
                      ),
                  imageUrl:naiveUrl+"lt3.png"
              ),
              textbox(text: "P(Yes|weak ) = 0.67*0.64 /0.57 = 0.75"),
              textbox(text: "P(no|weak)  = 0.4*0.36/0.57 = 0.25"),
              textbox(text: "Now, We have determine for the particular day where,"),
              Container(padding:const EdgeInsets.all(8.0),color: Colors.green,width: double.infinity,child: textbox(text: "Outlook = Sunny,\nHumidity =  High\nWind = weak\nPlay = ?")),
              SizedBox(height: 10,),
              Heading(title: "Likelihood of yes on this particular day ",),
              textbox(text: "= P(outlook=sunny|yes) * P(Humidity=high|yes) * P(wind=weak) * p(yes)"),
              textbox(text: "= 3/9*3/9*6/9*9/14 = 0.0199"),
              Heading(title: "Likelihood of no on this particular day",),
              textbox(text: "= P(outlook=sunny|no) * P(Humidity=high|no) * P(wind=weak) * p(no)"),
              textbox(text: "= 2/5*4/5*2/5*5/14 = 0.0166"),
              textbox(text: "Now "),
              textbox(text: "P(Yes) = 0.0199/(0.0199+0.0166) = 0.55"),
              textbox(text: "P(No) =  0.0166 /(0.0199+0.0166) = 0.45"),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.green,
                child: textbox(text: "Our model predicts that there is a 55% chance there will be game tomorrow."),
              ),
              SizedBox(height: 10,),
              Reference(url: ["Image Source: Simplilearn.com"],),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
