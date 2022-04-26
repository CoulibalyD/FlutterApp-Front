import 'package:app/component/icons.dart';
import 'package:app/component/map_component/map_screen.dart';
import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transport',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 320,
                child: Card(
                  child: ListTile(
                    leading: moto,
                    title: Text('moto'),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: cars,
                  title: Text('cars'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: bus,
                  title: Text('bus'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: velo,
                  title: Text('velo'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: miniBus,
                  title: Text('minibus'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: train,
                  title: Text('train'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: tram,
                  title: Text('tram'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: courire,
                  title: Text('courire'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 320,
              child: Card(
                child: ListTile(
                  leading: marcher,
                  title: Text('marcher'),
                  trailing: Icon(
                    Icons.add,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const MapScreen()))),
                child: const Text('Valider', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
