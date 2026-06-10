import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CampusMapScreen extends StatefulWidget {
  const CampusMapScreen({super.key});

  @override
  State<CampusMapScreen> createState() => _CampusMapScreenState();
}

class _CampusMapScreenState extends State<CampusMapScreen> {

  static const CameraPosition initialPosition = CameraPosition(
    target: LatLng(17.522180, 78.367860),
    zoom: 18,
  );

  final Set<Marker> markers = {
    const Marker(
      markerId: MarkerId("glec"),
      position: LatLng(17.522180, 78.367860),
      infoWindow: InfoWindow(
        title: "GLEC Campus",
      ),
    ),

    const Marker(
      markerId: MarkerId("block1"),
      position: LatLng(17.522180, 78.367860),
      infoWindow: InfoWindow(
        title: "Block 1",
      ),
    ),

    const Marker(
      markerId: MarkerId("block2"),
      position: LatLng(17.522250, 78.367950),
      infoWindow: InfoWindow(
        title: "Block 2",
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Campus Map"),
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        markers: markers,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
      ),
    );
  }
}