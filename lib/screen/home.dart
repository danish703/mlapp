import 'package:flutter/material.dart';
import 'package:machinelearningalgorithm/classification/Knn.dart';
import 'package:machinelearningalgorithm/classification/LogisticRegression.dart';
import 'package:machinelearningalgorithm/classification/decisiontree.dart';
import 'package:machinelearningalgorithm/classification/naivebayes.dart';
import 'package:machinelearningalgorithm/classification/randomforest.dart';
import 'package:machinelearningalgorithm/classification/svm.dart';
import 'package:machinelearningalgorithm/clustering/hierarchy.dart';
import 'package:machinelearningalgorithm/clustering/kmean.dart';
import 'package:machinelearningalgorithm/linearmodel/linearmodel.dart';
import 'package:machinelearningalgorithm/linearmodel/polynomialregression.dart';
import 'package:machinelearningalgorithm/numpy/matplotlib.dart';
import 'package:machinelearningalgorithm/numpy/numpy.dart';
import 'package:machinelearningalgorithm/numpy/pandas.dart';
import 'package:machinelearningalgorithm/terminology/DRT.dart';
import 'package:machinelearningalgorithm/terminology/gd.dart';
import 'package:machinelearningalgorithm/terminology/pipeline.dart';
import 'package:machinelearningalgorithm/widget/appbar.dart';
import 'package:machinelearningalgorithm/widget/iconwithlabel.dart';
import 'package:machinelearningalgorithm/widget/titlewithline.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:machinelearningalgorithm/linearmodel/multiplelinearregression.dart';
import 'package:machinelearningalgorithm/widget/myDrawer.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String testDevice='070C3F7F46C3ED0D91860386C7B6B4A4';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<int> _counter;
  Future<void> _setcounter() async {
    final SharedPreferences prefs = await _prefs;
    int counter = await _readCounter();
      prefs.setInt('counter',counter+1);
  }
  Future<int> _readCounter() async {
    final SharedPreferences prefs = await _prefs;
    int counter = prefs.getInt('counter') ?? 1;
    return counter;
  }
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['Learn Machine Learning', 'Machine Learning','Machine Learning with python','python','ML','Data Science','AI','Python coding','ML Algorithm','basic machine learing','Decision tree','K-mean','KNN algorithm','algorithm','Linear Regression','Expert in ML'],
    contentUrl: 'http://foo.com/bar.html',
    childDirected: true,
    nonPersonalizedAds: true,
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: 'ca-app-pub-4700436101037709/5901920253',
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId:'ca-app-pub-4700436101037709/5455676627',
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }

  @override
  void initState() {
//    FirebaseAdMob.instance
//        .initialize(appId: 'ca-app-pub-4700436101037709~2948453850');
    FirebaseAdMob.instance
        .initialize(appId: FirebaseAdMob.testAppId);
    _bannerAd = createBannerAd()..load()..show();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        title: "Machine Learning Algorithms",
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleWithLine("Learn Numpy Stack "),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.matrix,
                              title: "Numpy",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Numpy.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: FontAwesome.table,
                              title: "Pandas",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Pandas.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: Foundation.graph_bar,
                              title: "Matplotlib",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Matplotlib.routeName);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleWithLine("Linear Regression Model "),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: AntDesign.dotchart,
                              title: "Simple Regression",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(LinearModel.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.chart_multiline,
                              title: "Multiple  Regression",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context).pushNamed(
                                    MultipleLinearRegression.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.chart_bell_curve,
                              title: "Polynomial Regression",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(PolyNomialRegression.routeName);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleWithLine("Classification Model"),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons
                                  .chart_bell_curve_cumulative,
                              title: "Logistic Regression",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(LogisticRegression.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.file_tree,
                              title: "Decision Tree",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(DecisionTree.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: Entypo.flow_tree,
                              title: "Random Forest",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(RandomForest.routeName);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: FontAwesome.support,
                              title: "SVM",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context).pushNamed(SVM.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: FontAwesome.steam,
                              title: "Naive Bayes",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(NaiveBayes.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.chart_multiline,
                              title: "K-NN",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context).pushNamed(KNN.routeName);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleWithLine("Clustering Model "),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons
                                  .chart_scatter_plot_hexbin,
                              title: "K-Mean",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Kmean.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: FontAwesome5Solid.network_wired,
                              title: "Hierarchical Clustering",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Hierarchy.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16.0),
                  child: Column(
                    children: <Widget>[
                      TitleWithLine("Terminology and Techniques"),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.pipe,
                              title: "Pipeline",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(Pipeline.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialCommunityIcons.gradient,
                              title: "Gradient Descent",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context)
                                    .pushNamed(GradientDescent.routeName);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonWithLabel(
                              icon: MaterialIcons.graphic_eq,
                              title: "Dimensionality R.T",
                              onPressed: () async{
                                int count = await _readCounter();
                                _setcounter();
                                if(count%4==0){
                                  _interstitialAd=createInterstitialAd()..load()..show();
                                }
                                Navigator.of(context).pushNamed(DRT.routeName);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
