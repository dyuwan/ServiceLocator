import 'package:dbmsproject/cleaning_distance.dart';
import 'package:dbmsproject/cleaning_price.dart';
import 'package:flutter/material.dart';
import 'L2.dart';
import 'local.dart';
import 'interface.dart';
import 'ac_price.dart';
import 'carpenters.dart';
import 'packers_distance.dart';
import 'ac_distance.dart';
import 'carpenters_distance.dart';
import 'map_select.dart';
import 'distance_interface.dart';
import 'electricans.dart';
import 'electricians_distance.dart';
import 'grooming_distance.dart';
import 'grooming_price.dart';
import 'painters.dart';
import 'painters_distance.dart';
import 'pest_distance.dart';
import 'pest_price.dart';
import 'plumbers.dart';
import 'plumbers_distance.dart';
import 'quality_interface.dart';
import 'best_interface.dart';
import 'pest_quality.dart';
import 'ac_quality.dart';
import 'carpenters_quality.dart';
import 'cleaning_quality.dart';
import 'electricians_quality.dart';
import 'grooming_quality.dart';
import 'packers_quality.dart';
import 'painters_quality.dart';
import 'plumbers_quality.dart';
import 'check_interface.dart';
import 'packers_best.dart';
import 'ac_best.dart';
import 'carpenters_best.dart';
import 'cleaning_best.dart';
import 'electricians_best.dart';
import 'grooming_best.dart';
import 'painters_best.dart';
import 'pest_best.dart';
import 'plumbers_best.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doorstep Location',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/interface": (BuildContext context) => InterfacePage(),
        "/distinterface": (BuildContext context) => dInterfacePage(),
        "/qinterface": (BuildContext context) => QualityPage(),
        "/best": (BuildContext context) => bInterfacePage(),
        "/check": (BuildContext context) => cInterfacePage(),
        "/mapselect": (BuildContext context) => SelectPage(),
        "/screenmap1": (BuildContext context) => mapApp(),
        "/screenmap2": (BuildContext context) => mapApp1(),
        "/screenmap3": (BuildContext context) => mapAppA(),
        "/screenmap4": (BuildContext context) => mapApp2(),
        "/screenmap5": (BuildContext context) => mapAppB(),
        "/screenmap6": (BuildContext context) => mapApp3(),
        "/screenmap7": (BuildContext context) => mapAppC(),
        "/screenmap8": (BuildContext context) => mapApp4(),
        "/screenmap9": (BuildContext context) => mapAppD(),
        "/screenmap10": (BuildContext context) => mapApp5(),
        "/screenmap11": (BuildContext context) => mapAppE(),
        "/screenmap12": (BuildContext context) => mapApp6(),
        "/screenmap13": (BuildContext context) => mapAppF(),
        "/screenmap14": (BuildContext context) => mapApp7(),
        "/screenmap15": (BuildContext context) => mapAppG(),
        "/screenmap16": (BuildContext context) => mapApp8(),
        "/screenmap17": (BuildContext context) => mapAppH(),
        "/screenmap18": (BuildContext context) => mapApp9(),
        "/screenmap19": (BuildContext context) => mapApp10(),
        "/screenmap20": (BuildContext context) => mapApp11(),
        "/screenmap21": (BuildContext context) => mapApp12(),
        "/screenmap22": (BuildContext context) => mapApp13(),
        "/screenmap23": (BuildContext context) => mapApp14(),
        "/screenmap24": (BuildContext context) => mapApp15(),
        "/screenmap25": (BuildContext context) => mapApp16(),
        "/screenmap26": (BuildContext context) => mapApp17(),
        "/screenmap27": (BuildContext context) => mapApp18(),
        "/screenmap28": (BuildContext context) => mapApp19(),
        "/screenmap29": (BuildContext context) => mapApp20(),
        "/screenmap30": (BuildContext context) => mapApp21(),
        "/screenmap31": (BuildContext context) => mapApp22(),
        "/screenmap32": (BuildContext context) => mapApp23(),
        "/screenmap33": (BuildContext context) => mapApp24(),
        "/screenmap34": (BuildContext context) => mapApp25(),
        "/screenmap35": (BuildContext context) => mapApp26(),
        "/screenmap36": (BuildContext context) => mapApp27(),
      },
    );
  }
}