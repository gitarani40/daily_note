import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class School extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: new Text("Online School"),
        centerTitle: true,
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  child: new Image.asset('images/task.jpeg', height: 60.0, width: 60.0),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("TASK", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Let's Do Your Task", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    ],
                  ),
                ))
              ],)
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  child: new Image.asset('images/reference.jpeg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("REFERENCE", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Get Some New Reference", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    ],
                  ),
                ))
              ],),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  child: new Image.asset('images/online.jpeg', height: 60.0, width: 60.0),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("ONLINE DISCUSSION", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Don't Forget to Do Online Discussion", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    ],
                  ),
                ))
              ],)
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  child: new Image.asset('images/laptop.jpeg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("LAPTOP", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Get Your Laptop Ready", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    ],
                  ),
                ))
              ],),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,
                  child: new Image.asset('images/internet.jpeg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("INTERNET CONNECTION", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Make Sure Your Internet Data is Stable", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                    ],
                  ),
                ))
              ],),
            ),
          ],
        ),
      ),
    );
  }
}