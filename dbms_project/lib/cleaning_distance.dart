import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'L2.dart';
import 'package:flutter/services.dart' show rootBundle;

class mapApp4 extends StatefulWidget {
  @override
  _mapAppState createState() => _mapAppState();
}

class _mapAppState extends State<mapApp4> {
  GoogleMapController mapController;
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;

  final Map<String, Marker> _markers = {};
  var latit = new List(100);
  var longit = new List(100);
  var name = new List(100);
  var dist = new List(100);
  var temp=new List(2);
  static double long1= send().longitude();
  static double lat1= send().latitude();

  final LatLng _center = LatLng(lat1, long1);

  getCurrentLocation() async{
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
      temp[0]= _currentPosition.latitude;
      temp[1]= _currentPosition.longitude;
    });
    print("Clear");
    return temp;
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
      var lat= double.parse(latitude);
      var long= double.parse(longitude);
      var d= await send().distance(lat1, long1, lat, long);
      name[i-1]= nam;
      latit[i-1]= lat;
      longit[i-1]= long;
      dist[i-1]= d;
    }
    print("Read data");
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    await readcsv();
    setState(() {
      _markers.clear();
      for(int i=0; i<55; i++) {
        if (dist[i] <= 8) {
          final mark = Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure),
            markerId: MarkerId(name[i]),
            position: LatLng(latit[i], longit[i]),
            infoWindow: InfoWindow(
              title: name[i],
              snippet: "Distance: ${dist[i]} km",
            ),
          );
          _markers[name[i]] = mark;
        }
      }
      final mark = Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        markerId: MarkerId("User"),
        position: LatLng(lat1, long1),
        infoWindow: InfoWindow(
          title: "User Location",
          snippet: "LAT: ${lat1} LONG: ${long1}",
        ),
      );
      _markers["User"] = mark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cleaners Nearby'),
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
            target: LatLng(lat1, long1),
            zoom: 12.0,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}