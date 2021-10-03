import 'package:flutter/material.dart';
import 'package:instagram/AddBox.dart';
import 'package:instagram/Favourite.dart';
import 'package:instagram/InstaBody.dart';
import 'package:instagram/Profile.dart';
import 'package:instagram/search.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {

  int _curentIndex = 0;

  final appBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(height: 35.0, child: Image.asset("assets/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  final tabs = [
    InstaBody(),
    Search(),
    AddBox(),
    Favourite(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: appBar,
      body: tabs[_curentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(size: 30.0),
          unselectedIconTheme: IconThemeData(size: 30.0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              _curentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.search,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_identity,
                ),
                title: Text(''))
          ]),
    );
  }
}
