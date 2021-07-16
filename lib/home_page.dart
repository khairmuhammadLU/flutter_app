import 'package:flutter/material.dart';

import 'routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
        appBar: AppBar(
            title: Text("My AppBar"),
            centerTitle: true,
            backgroundColor: Colors.redAccent),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                hoverColor: Colors.amber[colorCodes[index]],
                child: Center(
                  child: Text('Entry ${entries[index]}'),
                  heightFactor: 2.0,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                // onTap: () => Scaffold.of(context)
                //     .showSnackBar(SnackBar(content: Text(index.toString()))),
              );
            }));
  }
}
