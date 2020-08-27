import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/const.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/codeImage.dart';
import 'package:machinelearningalgorithm/widget/heading.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:machinelearningalgorithm/widget/reference.dart';
import 'package:machinelearningalgorithm/widget/text.dart';

class Matplotlib extends StatelessWidget {
  static const routeName = '/matplotlib';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Matplotlib Intro"
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbox(text: "Matplotlib is an amazing visualization library in Python for 2D plots of arrays"),
              textbox(text: "Matplotlib is a multi-platform data visualization library built on NumPy arrays and designed to work with the broader SciPy stack."),
              textbox(text: "One of the greatest benefits of visualization is that it allows us visual access to huge amounts of data in easily digestible visuals"),
              textbox(text: "Matplotlib consists of several plots like line, bar, scatter, histogram etc"),
              SizedBox(height: 10,),
              Heading(title: "Importing matplotlib",),
              textbox(text: "from matplotlib import pyplot as plt or"),
              textbox(text: "import matplotlib.pyplot as plt"),
              SizedBox(height: 10,),
              Heading(title: "Line plot :",),
              CodeImage(url: matploturl+"line.png",),
              SizedBox(height: 10,),
              Heading(title: "Bar plot :",),
              CodeImage(url: matploturl+"bar.png",),
              SizedBox(height: 10,),
              Heading(title: "Histogram plot :",),
              CodeImage(url: matploturl+"hist.png",),
              SizedBox(height: 10,),
              Heading(title: "Scatter plot :",),
              CodeImage(url: matploturl+"scatter.png",),
              SizedBox(height: 10,),
              Heading(title: "Funcational approach plot :",),
              CodeImage(url: matploturl+"function.png",),
              SizedBox(height: 10,),
              Heading(title: "Set title,xlabel,ylabel in plot graph",),
              CodeImage(url: matploturl+"function2.png",),
              SizedBox(height: 10,),
              Heading(title: "Sub plot in Matplot lib",),
              textbox(text: "Matplotlib allows us easily create multi-plots on the same figure using the .subplot() method. This .subplot() method takes in three"),
              textbox(text: "parameters, namely:"),
              textbox(text: "nrows: the number of rows the Figure should have."),
              textbox(text: "ncols: the number of columns the Figure should have."),
              textbox(text: "plot_number : which refers to a specific plot in the Figure"),
              CodeImage(url: matploturl+"subplot.png",),
              SizedBox(height: 10,),
              Heading(title: "Sub plot in Matplot lib",),
              CodeImage(url: matploturl+"subplot.png",),
              SizedBox(height: 10,),
              Heading(title: "Create figuare and add plot",),
              CodeImage(url: matploturl+"fig.png",),
              SizedBox(height: 10,),
              Heading(title: "Create figuare and add plot",),
              CodeImage(url: matploturl+"fig.png",),
              SizedBox(height: 10,),
              Heading(title: "Add title,xlabel and ylabel in figuare",),
              CodeImage(url: matploturl+"fig2.png",),
              SizedBox(height: 10,),
              Heading(title: "Figuare in Figuare",),
              CodeImage(url: matploturl+"figinfig.png",),
              SizedBox(height: 10,),
              Heading(title: "Plot in Figuare in Figuare",),
              CodeImage(url: matploturl+"figinfigdraw.png",),
              SizedBox(height: 10,),
              Heading(title: "create a matrix of subplot for example 3*3 and draw in particular plot",),
              CodeImage(url: matploturl+"ml.png",),
              SizedBox(height: 10,),
              Heading(title: "Save the plot in local hard drive",),
              textbox(text: "fig.savefig(location)"),
              CodeImage(url: matploturl+"save.png",),
              SizedBox(height: 10,),
              Heading(title: "Legends in Graph",),
              CodeImage(url: matploturl+"legend.png",),
              SizedBox(height: 10,),
              Heading(title: "Time Series (Line chart)",),
              CodeImage(url: matploturl+"t1.png",),
              CodeImage(url: matploturl+"t2.png",),
              SizedBox(height: 10,),
              Heading(title: "Bar Graph of DataFrame",),
              CodeImage(url: matploturl+"df.png",),
              Reference(url: ["There are other lots of advance topics in Matplot lib, you can learn from official website \n https://matplotlib.org/"],),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
