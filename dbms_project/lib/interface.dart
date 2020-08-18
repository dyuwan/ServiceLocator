import 'package:flutter/material.dart';

class InterfacePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<InterfacePage> {
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
            Text("Select Service Provider\n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Packers & Movers"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap1");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("AC Repair"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap3");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Carpenters"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap5");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("House Cleaners"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap7");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Electricians"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap9");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Groomers"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap11");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Painters"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap13");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Pest Control"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap15");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Plumbers"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap17");
              },
            ),
          ],
        ),
      ),
    );
  }
}