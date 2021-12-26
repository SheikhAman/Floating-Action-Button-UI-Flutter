import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  String title = 'Floating Action Button';

  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPage MyApp = MainPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      // floatingActionButton: buildNavigateButton(),
      floatingActionButton: buildMessageButton(),
      bottomNavigationBar: buildBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget buildMessageButton() => FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          12,
        )),
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.amber,
        label: Text('Message'),
        icon: Icon(Icons.message),
      );

  // Widget buildNavigateButton() => FloatingActionButton(
  //       child: Icon(Icons.share),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(24),
  //       ),
  //       backgroundColor: Colors.blue,
  //       onPressed: () {
  //         print('pressed');
  //       },
  //     );

  Widget buildBottomBar() => BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {},
      );
}
