import 'package:flutter/material.dart';
import 'package:instagram/models/Favourite_List_model.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0),child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Container(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0,),
              Text(data[index].time,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 25.0,
                      child: Image.network(data[index].imageurl)),
                  SizedBox(width: 10.0,),
                  Text(data[index].msg,style: TextStyle(fontSize: 17.0),)
                ],
              )
            ],
          ),
        )),);
  }
}
