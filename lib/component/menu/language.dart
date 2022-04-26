import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Language',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
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
                      minimumSize: const Size(200, 40),
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.purple, 
                      onPrimary: Colors.white,
                      onSurface: Colors.black),
                  child: const Text('Français'),
                  onPressed: () => Fluttertoast.showToast(
                      msg: 'vous avez choisis le Français')),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(200, 40),
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.purple, 
                      onPrimary: Colors.white, 
                      onSurface: Colors.black),
                  child: const Text('Anglais'),
                  onPressed: () => Fluttertoast.showToast(
                      msg: "vous avez choisis l'Anglais")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(200, 40),
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.purple, 
                      onPrimary: Colors.white,
                      onSurface: Colors.black),
                  child: const Text('Arabe'),
                  onPressed: () =>
                      Fluttertoast.showToast(msg: "vous avez choisis l'Arabe")),
            ),
          ],
        ),
      ),
    );
  }
}
