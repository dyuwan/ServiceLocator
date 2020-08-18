import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'locationread.dart' as locations;
import 'L2.dart';

class locationApp extends StatefulWidget {
  @override
  _locationAppState createState() => _locationAppState();
}

class _locationAppState extends State<locationApp> {
  GoogleMapController mapController;
  final Map<String, Marker> _markers = {};

  static double long= send().longitude();
  static double lat= send().latitude();
  final LatLng _center = LatLng(lat, long);

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
      final marker = Marker(
        markerId: MarkerId("Ajgar"),
        position: LatLng(19.1264, 72.8505),
        infoWindow: InfoWindow(
          title: "Ajgar Home",
        ),
      );
      _markers["Ajgar"] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Offices Map'),
          backgroundColor: Colors.grey[900],
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                }
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){
                  Navigator.pushNamed(context, '/screenmap1');
                }
            )
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 8.0,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}