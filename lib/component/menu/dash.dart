import 'dart:io';

import 'package:app/component/map_component/map_screen.dart';
import 'package:app/component/menu/choose.dart';
import 'package:app/component/menu/language.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Apros',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(250, 50),
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Colors.purple,
                        onPrimary: Colors.white,
                        onSurface: Colors.black),
                    child: const Text('Mode de transport'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Choose())))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(250, 50),
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Colors.purple,
                        onPrimary: Colors.white,
                        onSurface: Colors.black),
                    child: const Text('Langue'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Language())))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(250, 50),
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Colors.purple,
                        onPrimary: Colors.white,
                        onSurface: Colors.black),
                    child: const Text('Instructions'),
                    onPressed: () => Navigator.of(context).push(PageTransition(
                        child: const MapScreen(),
                        type: PageTransitionType.rightToLeft))),
              )
            ],
          ),
        ));
  }
}
