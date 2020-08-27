import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class SVMCode extends StatelessWidget {
  static const routeName = '/svmcode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Support Vector Machine"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: svmcodeurl+"lib.png",),
              SizedBox(height: 10,),
              Heading(title: "2.load the datasets and split into target varibale and attribues",),
              CodeImage(url: svmcodeurl+"dataset.png",),
              SizedBox(height: 10,),
              Heading(title: "3.Splitting the dataset into the Training set and Test set",),
              CodeImage(url: svmcodeurl+"tt.png",),
              SizedBox(height: 10,),
              Heading(title: "6.Feature Scaling",),
              CodeImage(url: svmcodeurl+"fs.png",),
              SizedBox(height: 10,),
              Heading(title: "7.Training the SVM model on the Training set",),
              CodeImage(url: svmcodeurl+"train.png",),
              SizedBox(height: 10,),
              Heading(title: "8.Predicting the Test set results",),
              CodeImage(url: svmcodeurl+"predict.png",),
              SizedBox(height: 10,),
              Heading(title: "9. Making the Confusion Matrix",),
              CodeImage(url: svmcodeurl+"confusion.png",),
              SizedBox(height: 10,),
              Heading(title: "10.Visualising the Training set results",),
              CodeImage(url: svmcodeurl+"vt.png",),
              SizedBox(height: 10,),
              CodeImage(url: svmcodeurl+"vtf.png",),
              SizedBox(height: 10,),
              Heading(title: "11.Visualising the Test set results",),
              CodeImage(url: svmcodeurl+"vte.png",),
              SizedBox(height: 10,),
              CodeImage(url: svmcodeurl+"vtef.png",),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.green,
                child: Text("As in the visualize the result is not accurate now for better result lets apply the Kernel SVM",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10,),
              Heading(title: "12.Train the kernel SVM",),
              CodeImage(url: svmcodeurl+"ksvm.png",),
              SizedBox(height: 10,),
              Heading(title: "13.Predicting the Test set results",),
              CodeImage(url: svmcodeurl+"tksvm.png",),
              SizedBox(height: 10,),
              Heading(title: "14. Making the Confusion Matrix",),
              CodeImage(url: svmcodeurl+"confusion.png",),
              SizedBox(height: 10,),
              Heading(title: "15. Visualising the Training set results",),
              CodeImage(url: svmcodeurl+"vtksvm.png",),
              SizedBox(height: 10,),
              CodeImage(url: svmcodeurl+"a.png",),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Heading(title: "16.Visualising the Test set results",),
              CodeImage(url: svmcodeurl+"vttksvm.png",),
              SizedBox(height: 10,),
              CodeImage(url: svmcodeurl+"b.png",),
              SizedBox(height: 10,),
              Reference(
                url: ["Dataset Source: https://www.kaggle.com/rakeshrau/social-network-ads"],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
