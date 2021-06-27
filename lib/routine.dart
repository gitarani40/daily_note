import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Routine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: new Text("Routine"),
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
                  child: new Image.asset('images/memasak.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("COOKING", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Cooking Some Food", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/clean.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("CLEAN OFF", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Cleaning The House", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/film.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("WATCHING", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Watching Movie", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/buku.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("READING", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Read Some Novel", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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
                  child: new Image.asset('images/bubbles.jpg', height: 60.0, width: 60.0,),
                ),
                Expanded(child: Container(
                  padding: EdgeInsets.only(top: 25),
                  height: 100.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("WASHING", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("Washing Clothes or Something", style: TextStyle(color: Colors.black, fontSize: 15.0),),
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