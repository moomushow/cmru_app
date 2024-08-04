import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "Teerapong Jaikumma";
  String accountEmail = "teerapong@cmru.ac.th";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
            accountName: Text("$name"), accountEmail: Text("$accountEmail")),
        ListView(shrinkWrap: true, children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {},
          ),
        ])
      ]),
    );
  }
}
