import 'package:flutter/material.dart';

class dInterfacePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<dInterfacePage> {
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
            Text("\n Nearby Radius: 8km \n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Packers & Movers Nearby"),
              onPressed: (){
                Navigator.pushNamed(context, "/screenmap2");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("AC Repair Nearby"),
              onPressed: (){
                Navigator.pushNamed(context, "/screenmap4");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Carpenters Nearby"),
              onPressed: (){
                Navigator.pushNamed(context, "/screenmap6");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("House Cleaners Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap8");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Electricians Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap10");
              },
            ),
            MaterialButton(
              height: 45.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Groomers Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap12");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Painters Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap14");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Pest Control Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap16");
              },
            ),
            MaterialButton(
              height: 43.0,
              minWidth: 190.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Plumbers Nearby"),
              onPressed: () {
                Navigator.pushNamed(context, "/screenmap18");
              },
            ),
          ],
        ),
      ),
    );
  }
}