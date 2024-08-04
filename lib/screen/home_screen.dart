import 'package:cmru_app/screen/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Teerapong Jaikumma";
  String accountEmail = "teerapong@cmru.ac.th";

  void changeName() {
    setState(() {
      name = "Somchai Jaidee";
    });
  }

  // void changeName2() {
  //   setState(() {
  //     name = "errorsomchai";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
          title: const Text(
            'Home',
          ),
          backgroundColor: Colors.blue.shade500),
      body: Center(
        child: Text('สวัสดีคุณ $name'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailingmma makes auto-formatting nicer for build methods.
    );
  }
}
