import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class maps extends StatefulWidget {
  @override
  _mapsState createState() => _mapsState(this.deskripsiMuseum);
  maps(this.deskripsiMuseum);
  final deskripsiMuseum;
}

class _mapsState extends State<maps> {
  _mapsState(this.deskripsiMuseum);
  final deskripsiMuseum;
  late GoogleMapController controllerMaps;
  late String long = '${deskripsiMuseum['longitude']}';
  late String lat = '${deskripsiMuseum['latitude']}';
  final Set<Marker> marks = new Set();
  late LatLng lokasi = LatLng(double.parse(long), double.parse(lat));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B3B36),
        title: const Text("Maps", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: GoogleMap(
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(
          target: lokasi,
          zoom: 18.0,
        ),
        markers: getMarks(),
        mapType: MapType.normal,
        onMapCreated: (controllers) {
          setState(() {
            controllerMaps = controllers;
          });
        },
      ),
    );
  }

  Set<Marker> getMarks() {
    setState(() {
      marks.add(Marker(
        markerId: MarkerId(lokasi.toString()),
        position: lokasi,
        icon: BitmapDescriptor.defaultMarker,
      ));
    });

    return marks;
  }
}
