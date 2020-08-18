import 'package:flutter/material.dart';

class cInterfacePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<cInterfacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Map Select"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Check Markers for Name Values:\n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Packers & Movers"),
              onPressed: (){
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("AC Repair"),
              onPressed: (){
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Carpenters"),
              onPressed: (){
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("House Cleaners"),
              onPressed: () {
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Electricians"),
              onPressed: () {
                print("Clear");
              },
            ),
            MaterialButton(
              height: 45.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Groomers"),
              onPressed: () {
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Painters"),
              onPressed: () {
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Pest Control"),
              onPressed: () {
                print("Clear");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Plumbers"),
              onPressed: () {
                print("Clear");
              },
            ),
          ],
        ),
      ),
    );
  }
}