import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  Position _currentPosition;
  double _distanceInMeters;
  String _currentAddress;
  double latit;
  double longit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("DoorStep Location"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                Navigator.pushNamed(context, '/mapselect');
              }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                color: Colors.grey[900],
                height: 55,
                width: double.infinity,
                child: Text(" Your Address: \n ${_currentAddress}", textDirection: TextDirection.ltr, style: TextStyle(color:Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold))
            ),
            Container(
              child: Icon(
                Icons.my_location,
                color: Colors.black,
                size: 150,
              ),
            ),
            Text("Welcome to DoorStep Locations", textDirection: TextDirection.ltr, style: TextStyle( fontSize: 26.0, fontWeight: FontWeight.bold)),
            ButtonTheme(
              minWidth: 130.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: Text("Get location", style: TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold)),
                onPressed: () {
                  _getCurrentLocation();
                },
              ),
            ),
            if (_currentPosition != null) Text("Location Read Succesfully \nClick the Arrow for Map Interface", textDirection: TextDirection.ltr, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            if (_currentPosition != null) Center(child: Text("Lat: ${_currentPosition.latitude}    Lng: ${_currentPosition.longitude}",
              textDirection: TextDirection.ltr, style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        latit= _currentPosition.latitude;
        longit= _currentPosition.longitude;
      });
      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);
      Placemark place = p[0];
      setState(() {
        _currentAddress =
        "${place.name},${place.thoroughfare}, ${place.subLocality}, ${place.locality},${place.administrativeArea}, ${place.postalCode}, ${place.country}";
      });

    } catch (e) {
      print(e);
    }
  }
  _calcDistance(double x, double y, double a, double b) async {
    _distanceInMeters = await Geolocator().distanceBetween(x, y, a, b);
    _distanceInMeters = _distanceInMeters/1000;
    _distanceInMeters = num.parse(_distanceInMeters.toStringAsFixed(3));

    return await _distanceInMeters;
  }
  _generalAddress(double a, double b) async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(a, b);
      Placemark place = p[0];
      String address ="${place.name},${place.thoroughfare}, ${place.subLocality}, ${place.locality},${place.administrativeArea}, ${place.postalCode}, ${place.country}";

      return await address;
    } catch (e) {
      print(e);
    }
  }
}

class send extends _HomePageState{
  latitude(){

    if(latit==null)
      return 19.0222;
    else
      return latit;
  }
  longitude(){
    if(longit==null)
      return 72.8561;
    else
      return longit;
  }
  templocation() async{
    Position pos= await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    return pos;
  }
  distance(double x, double y, double a, double b) async{
    var d=await _calcDistance(x, y, a, b);
    return d;
  }
  address(double a, double b) async{
    return await _generalAddress(a, b);
  }
}