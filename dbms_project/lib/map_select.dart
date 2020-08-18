import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Map Filters"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Select Map Group\n", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold)),
            MaterialButton(
              height: 40.0,
              minWidth: 140.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("By Price"),
              onPressed: () {
                Navigator.pushNamed(context, "/interface");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 140.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("By Distance"),
              onPressed: (){
                Navigator.pushNamed(context, "/distinterface");
              },
            ),

            MaterialButton(
              height: 40.0,
              minWidth: 140.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("By Quality"),
              onPressed: () {
                Navigator.pushNamed(context, "/qinterface");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 140.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Best Prices Nearby"),
              onPressed: (){
                Navigator.pushNamed(context, "/best");
              },
            ),
            MaterialButton(
              height: 40.0,
              minWidth: 140.0,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text("Admin-Integrity"),
              onPressed: (){
                Navigator.pushNamed(context, "/check");
              },
            ),
          ],
        ),
      ),
    );
  }
}