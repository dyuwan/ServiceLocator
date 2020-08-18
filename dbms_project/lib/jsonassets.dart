import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'package:csv/csv.dart';

@JsonSerializable()
class Point {
  Point ({
    this.lat,
    this.lng,
    this.srid,
  });
  final double lat;
  final double lng;
  final int srid;
}

@JsonSerializable()
class Plumber {
  Plumber({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class AC_Repair {
  AC_Repair({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Carpenter {
  Carpenter({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Cleaner {
  Cleaner({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Electricians {
  Electricians({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Groomer {
  Groomer({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Packer {
  Packer({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Painter {
  Painter({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}

@JsonSerializable()
class Pest {
  Pest({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.age,
    this.contactNo,
    this.standardRate,
    this.availability,
    this.serviceRange,
    this.point,
  });

  final String name;
  final String address;
  final int id;
  final double latitude;
  final double longitude;
  final int age;
  final int standardRate;
  final int contactNo;
  final int availability;
  final int serviceRange;
  final Point point;
}


Future<dynamic> getPlumbers() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Plumber> plumbers = [];

  final response = await http.get("${dataLocationsURL}/plumbers");
  if (response.statusCode == 200) {
    var plumberData = json.decode(response.body);
    for(var u in plumberData['plumbers']) {
      // print(u);
      Plumber plumber = Plumber(
          id: u['id'],
          name : u["name"],
          address: u['address'],
          latitude: u['latitude'],
          longitude: u['longitude'],
          age: u["age"],
          contactNo: u["contact_number"],
          standardRate: u["standard_rate"],
          availability: u["availability"],
          serviceRange: u["service_range"],
          point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      plumbers.add(plumber);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return plumbers;
}
Future<dynamic> getAC() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<AC_Repair> p = [];

  final response = await http.get("${dataLocationsURL}/ac_repairs");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['ac_repair']) {
      // print(u);
      AC_Repair ac = AC_Repair(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getCarpenter() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Carpenter> p = [];

  final response = await http.get("${dataLocationsURL}/carpenters");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['carpenters']) {
      // print(u);
      Carpenter ac = Carpenter(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getCleaner() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Cleaner> p = [];

  final response = await http.get("${dataLocationsURL}/house_cleaning");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['house_cleaning']) {
      // print(u);
      Cleaner ac = Cleaner(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getElectrician() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Electricians> p = [];

  final response = await http.get("${dataLocationsURL}/electricians");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['electricians']) {
      // print(u);
      Electricians ac = Electricians(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getGroomer() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Groomer> p = [];

  final response = await http.get("${dataLocationsURL}/groomings");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['electricians']) {
      // print(u);
      Groomer ac = Groomer(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getPainters() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Painter> p = [];

  final response = await http.get("${dataLocationsURL}/painters");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['painters']) {
      // print(u);
      Painter ac = Painter(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getPest() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Pest> p = [];

  final response = await http.get("${dataLocationsURL}/pest_control");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['painters']) {
      // print(u);
      Pest ac = Pest(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}
Future<dynamic> getPacker() async {
  const dataLocationsURL = 'https://6893483d.ngrok.io';
  List<Packer> p = [];

  final response = await http.get("${dataLocationsURL}/mandps");
  if (response.statusCode == 200) {
    var pData = json.decode(response.body);
    for(var u in pData['mandps']) {
      // print(u);
      Packer ac = Packer(
        id: u['id'],
        name : u["name"],
        address: u['address'],
        latitude: u['latitude'],
        longitude: u['longitude'],
        age: u["age"],
        contactNo: u["contact_number"],
        standardRate: u["standard_rate"],
        availability: u["availability"],
        serviceRange: u["service_range"],
        point: u["latitude"]+u["longitude"]+u["id"],
      );
      //print(plumber.name);
      p.add(ac);
    }
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(dataLocationsURL));
  }
  return p;
}

driver(){
  List p= [];
  for(int i=0;i<80;i++){
    p.add(getPlumbers());
    //p.add(getAC());
    //p.add(getCarpenter());
    //p.add(getCleaner());
    //p.add(getElectrician());
    //p.add(getGroomer());
    //p.add(getPacker());
    //p.add(getPlumbers());
    //p.add(getPest());
    //p.add(getPainters());
  }
  String csv = const ListToCsvConverter().convert(p);
  final input = new File('assets/plumbers.csv').openRead();
  new File('assets/plumbers.csv').writeAsString(csv)
      .then((File file) {
    //place
  });
  final fields = input.transform(utf8.decoder).transform(new CsvToListConverter()).toList();
  print("Updated: $fields");
}