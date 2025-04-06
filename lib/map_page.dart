import 'package:circulahealth/components/radar_pulse.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Full-screen Map
            const Positioned.fill(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(-6.200000, 106.816666),
                  zoom: 15,
                ),
                myLocationEnabled: true,
              ),
            ),

            // Radar pulse overlay (center of screen)
            Center(child: RadarPulse()),

            // Optional: Add buttons or info
            const Positioned(
              top: 40,
              left: 16,
              child: Text(
                'Searching nearby...',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
