import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class PLR extends StatelessWidget {
  static const routeName ='/PLR';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
          title: "Polynomial Linear Regression"
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Heading(title: "1.Import required library",),
              CodeImage(url: polyCodeurl+"library.png",),
              SizedBox(height: 10,),
              Heading(title: "2.Load dataset and view top 5 record",),
              CodeImage(url: polyCodeurl+"dataframe.png",),
              SizedBox(height: 10,),
              CodeImage(url: polyCodeurl+"record.png",),
              SizedBox(height: 10,),
              Heading(title: "3. Select the features and target variable",),
              CodeImage(url: polyCodeurl+"id.png",),
              SizedBox(height: 10,),
              textbox(text: "Now here we create the model with both Simple Linear regression and Polynomial Regression model and compare the result \n Frst we create the model using linear regression"),
              Heading(title: "4. Create the model for simple linear regression model,"),
              CodeImage(url: polyCodeurl+"slr.png",),
              SizedBox(height: 10,),
              Heading(title: "5.create the model using polynomial regression for that first we convert the features into polynomial of degree 4 and create the model and train with train data",),
              CodeImage(url: polyCodeurl+"polyfeature.png",),
              SizedBox(height: 10,),
              Heading(title: "6. Check the predict of simple linear regression using graph",),
              CodeImage(url: polyCodeurl+"slrp.png",),
              CodeImage(url: polyCodeurl+"slrg.png",),
              Heading(title: "6. Check the predict of polynomial regression using graph",),
              CodeImage(url: polyCodeurl+"plrp.png",),
              CodeImage(url: polyCodeurl+"plrg.png",),
              SizedBox(height: 100,),

            ],
          ),
        ),
      ),
    );
  }
}
