import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Metime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: new Text("ME TIME"),
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
                  child: new Image.asset('images/musik.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("MUSIC", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Listening Own Music", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/skincare.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("SKINCARE", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Do Your Skincare Routine", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/jalan.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("HANGOUT", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Hangout With Friends and Family", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/massage.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("BODY CARE", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Do Your Body Care", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/tea.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("TEA TIME", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Drink a Cup of Tea For Relaxing", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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