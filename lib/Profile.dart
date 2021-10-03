import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/Tabs/Tab_one.dart';
import 'package:instagram/Tabs/Tab_two.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {

  TabController _tabController;

  File profilePic;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      profilePic = image;
    });
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: [Tab_one(), Tab_two()],
      controller: _tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  CircleAvatar(
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: profilePic == null ? AssetImage("assets/download.png") : FileImage(profilePic)),
                        ),
                      ),
                      backgroundColor: Colors.blueAccent,
                      radius: 45.0),
                  CircleAvatar(
                    radius: 12.0,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.add,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              onTap: () {
                print('Button Clicked');
                getImage();
              },
            ),
            SizedBox(width: 25.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '123',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'posts',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Column(
                      children: <Widget>[
                        Text(
                          '51.6k',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'followers',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Column(
                      children: <Widget>[
                        Text(
                          '200',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'followings',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  width: 200.0,
                  height: 30.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey)),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    color: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          'Virat Kohli',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22.0),
        ),
        Text(
          'Profession',
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ),
        Text(
          'Cricketer',
          style: TextStyle(fontSize: 16.0),
        ),
        Text('Stylish Model', style: TextStyle(fontSize: 16.0)),
        Text('Indian', style: TextStyle(fontSize: 16.0)),
        Text('Royal Challenger Banglore', style: TextStyle(fontSize: 16.0)),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Colors.grey),
        Container(
          child: Column(
            children: <Widget>[
              TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.grid_on, color: Colors.grey)),
                  Tab(icon: Icon(
                      Icons.perm_contact_calendar, color: Colors.grey)),
                ],
                controller: _tabController,
              ),
              Container(
                height: 2000.0,
                child: _getTabBarView(
                  <Widget>[
                    Tab_one(),
                    Tab_two()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}



