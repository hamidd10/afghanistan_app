

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AfghanistanMap extends StatefulWidget {
  const AfghanistanMap({super.key});

  @override
  State<AfghanistanMap> createState() => _AfghanistanMapState();
}

class _AfghanistanMapState extends State<AfghanistanMap> {
  static const LatLng _pGooglePlex = LatLng(34.3603, 62.2060);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: const GoogleMap(initialCameraPosition: CameraPosition(target: _pGooglePlex, zoom: 15,),),
    );
  }
}

