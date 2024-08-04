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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/landscape.jpg'),
            Row(
              children: [
                Column(
                  children: [
                    Text("การอบรมหลักสูตร Flutter"),
                    Text(
                      "โดยนายบัณฑิต นันทะเทศ",
                      style: TextStyle(
                        color: Colors.red.shade500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.favorite),
                    Text("41"),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call),
                    Text(
                      "Call",
                      style: TextStyle(
                        color: Colors.red.shade500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.message),
                    Text("Message"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.email),
                    Text("Email"),
                  ],
                ),
              ],
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue.shade500,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue.shade500,
        onTap: (int index) {},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Item'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
