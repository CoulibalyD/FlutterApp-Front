import 'dart:io';
import 'package:app/component/menu/choose.dart';
import 'package:app/component/menu/dash.dart';
import 'package:app/component/menu/language.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'locations.dart' as locations;

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Map<String, Marker> _markers = {};
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        // backgroundColor: Colors.red.shade300,
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(Icons.menu, color: Colors.white),
            onTap: () => {
              Navigator.of(context).push(PageTransition(
                  child: const Dash(), type: PageTransitionType.leftToRight))
            },
          ),
          title: const Text(
            'Carte',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // actions: [
          //   GestureDetector(
          //     child: Icon(Icons.close, color: Colors.purple),
          //     // onTap: exit(1)
          //   ),
          // ],
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 2,
                ),
                markers: _markers.values.toSet(),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white12,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.library_add,
                  color: Colors.purple,
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Choose()))),
              ),
              const Spacer(),
              // IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(
                icon: const Icon(
                  Icons.language,
                  color: Colors.purple,
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Language()))),
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => exit(0),
          tooltip: 'Close app',
          child: new Icon(Icons.mode_standby_rounded),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
