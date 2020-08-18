import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'L2.dart';
import 'package:flutter/services.dart' show rootBundle;

class mapAppC extends StatefulWidget {
  @override
  _mapAppState createState() => _mapAppState();
}

class _mapAppState extends State<mapAppC> {
  GoogleMapController mapController;
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;

  final Map<String, Marker> _markers = {};
  var latit = new List(100);
  var longit = new List(100);
  var name = new List(100);
  var price = new List(100);
  static double long= send().longitude();
  static double lat= send().latitude();

  final LatLng _center = LatLng(lat, long);

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        lat= _currentPosition.latitude;
        long= _currentPosition.longitude;
      });
    }).catchError((e) {
      print(e);
    });
  }

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  readcsv() async{
    String data= await getFileData("assets/house_cleaning.csv");
    List lines = data.split("\n");
    for(var i=1; i<58; i++)
    {
      List parsed= lines[i].split(",");
      String nam= parsed[2];
      String latitude= parsed[3];
      String longitude = parsed[4];
      String pr= parsed[7];
      var prc= int.parse(pr);
      var lat= double.parse(latitude);
      var long= double.parse(longitude);
      name[i-1]= nam;
      latit[i-1]= lat;
      longit[i-1]= long;
      price[i-1]= prc;
    }
    print("Read data");
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    await readcsv();
    _getCurrentLocation();
    setState(() {
      _markers.clear();
      final mark = Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        markerId: MarkerId("User"),
        position: LatLng(lat, long),
        infoWindow: InfoWindow(
          title: "User Location",
          snippet: "LAT: ${lat} LONG: ${long}",
        ),
      );
      _markers["User"] = mark;
      for(int i=0; i<55; i++){
        if(price[i]>=1000 && price[i]<1300) {
          final mark = Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRose),
            markerId: MarkerId(name[i]),
            position: LatLng(latit[i], longit[i]),
            infoWindow: InfoWindow(
              title: name[i],
              snippet: "Price: ${price[i]}",
            ),
          );
          _markers[name[i]] = mark;
        }
        else if(price[i]>=1500 && price[i]<2000){
          final mark = Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueViolet),
            markerId: MarkerId(name[i]),
            position: LatLng(latit[i], longit[i]),
            infoWindow: InfoWindow(
              title: name[i],
              snippet: "Price: ${price[i]}",
            ),
          );
          _markers[name[i]] = mark;
        }
        else if(price[i]>=2000){
          final mark = Marker(
            markerId: MarkerId(name[i]),
            position: LatLng(latit[i], longit[i]),
            infoWindow: InfoWindow(
              title: name[i],
              snippet: "Price: ${price[i]}",
            ),
          );
          _markers[name[i]] = mark;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cleaners Map'),
          backgroundColor: Colors.grey[900],
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                }
            ),
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(lat, long),
            zoom: 12.0,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}