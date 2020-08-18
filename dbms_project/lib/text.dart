import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'L2.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage>{
  var address= new List(90);
  int a=0;

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  readcsv() async{
    String data= await getFileData("assets/packers_and_movers.csv");
    List lines = data.split("\n");
    var l= lines.length;
    for(var i=1; i<l; i++)
    {
      List parsed= lines[i].split(",");
      String latitude= parsed[3];
      String longitude = parsed[4];
      var lat= double.parse(latitude);
      var long= double.parse(longitude);
      address[i-1]= await send().address(lat, long);
      print(address[i-1]);
    }
    print("Reading Done");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Read-Writer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Calculate Address Of File"),
              onPressed: () {
                readcsv();
              },
            ),
          ],
        ),
      ),
    );
  }
}