import 'package:flutter/material.dart';

class bInterfacePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<bInterfacePage> {
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
            Text("\n Best Nearby Radius: 5km \n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Packers & Movers"),
              onPressed: (){
                Navigator.pushNamed(context, "/screenmap28");
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
                Navigator.pushNamed(context, "/screenmap29");
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
                Navigator.pushNamed(context, "/screenmap30");
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
                Navigator.pushNamed(context, "/screenmap31");
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
                Navigator.pushNamed(context, "/screenmap32");
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
                Navigator.pushNamed(context, "/screenmap33");
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
                Navigator.pushNamed(context, "/screenmap34");
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
                Navigator.pushNamed(context, "/screenmap35");
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
                Navigator.pushNamed(context, "/screenmap36");
              },
            ),
          ],
        ),
      ),
    );
  }
}