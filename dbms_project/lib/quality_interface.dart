import 'package:flutter/material.dart';

class QualityPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<QualityPage> {
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
            Text("Select Service Provider", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            Text("\n Displays 5***** Providers \n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 40.0,
              minWidth: 120.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Packers & Movers"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap25");
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
                Navigator.pushNamed(context, "/screenmap20");
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
                Navigator.pushNamed(context, "/screenmap21");
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
                Navigator.pushNamed(context, "/screenmap22");
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
                Navigator.pushNamed(context, "/screenmap23");
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
                Navigator.pushNamed(context, "/screenmap24");
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
                Navigator.pushNamed(context, "/screenmap26");
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
                Navigator.pushNamed(context, "/screenmap19");
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
                Navigator.pushNamed(context, "/screenmap27");
              },
            ),
          ],
        ),
      ),
    );
  }
}