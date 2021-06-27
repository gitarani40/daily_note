import 'package:flutter/material.dart';
import 'workout.dart';
import 'ui/uihome.dart';
import 'school.dart';
import 'routine.dart';
import 'metime.dart';
import 'day.dart';

void main() {
  runApp(new MaterialApp(
    title: "Daily",
    home: new Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Daily Note"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: new Container(
        decoration: BoxDecoration(
          color: Colors.purple[100],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Center(
                  child: Text(
                "Write Your Daily Activity Here",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Center(
                  child: Text(
                "Let's Be Productive Everyday",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Center(
                  child: Text(
                "~ Enjoy Your Day ~",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
              )),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              width: 400,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 8),
                        width: 116,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                              width: 5,
                              color: Colors.purpleAccent,
                            )),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: new Image.asset(
                                'images/healthy.jpg',
                                height: 60.0,
                                width: 60.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(builder: (context) => Workout());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                color: Colors.purpleAccent,
                                margin: EdgeInsets.only(top: 5),
                                width: 225,
                                height: 22,
                                child: Center(
                                  child: Text(
                                    'Workout',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 8),
                        width: 116,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                              width: 5,
                              color: Colors.purpleAccent,
                            )),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: new Image.asset(
                                'images/school.jpeg',
                                height: 60.0,
                                width: 60.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(builder: (context) => School());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                color: Colors.purpleAccent,
                                margin: EdgeInsets.only(top: 5),
                                width: 225,
                                height: 22,
                                child: Center(
                                  child: Text(
                                    'Online School',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              width: 400,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 110, top: 0),
                        padding: EdgeInsets.only(top: 8),
                        width: 116,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                              width: 5,
                              color: Colors.purpleAccent,
                            )),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: new Image.asset(
                                'images/day.jpeg',
                                height: 60.0,
                                width: 60.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(builder: (context) => Day());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                color: Colors.purpleAccent,
                                margin: EdgeInsets.only(top: 5),
                                width: 225,
                                height: 22,
                                child: Center(
                                  child: Text(
                                    'Start Your Day',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20, bottom: 30),
              width: 400,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 8),
                        width: 116,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                              width: 5,
                              color: Colors.purpleAccent,
                            )),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: new Image.asset(
                                'images/routine.jpg',
                                height: 60.0,
                                width: 60.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(builder: (context) => Routine());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                color: Colors.purpleAccent,
                                margin: EdgeInsets.only(top: 5),
                                width: 225,
                                height: 22,
                                child: Center(
                                  child: Text(
                                    'Routine',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 0),
                        padding: EdgeInsets.only(top: 8),
                        width: 116,
                        height: 105,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ],
                            border: Border.all(
                              width: 5,
                              color: Colors.purpleAccent,
                            )),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: new Image.asset(
                                'images/love.jpg',
                                height: 60.0,
                                width: 60.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(builder: (context) => Metime());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                color: Colors.purpleAccent,
                                margin: EdgeInsets.only(top: 5),
                                width: 225,
                                height: 22,
                                child: Center(
                                  child: Text(
                                    'Me Time',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Create Your Daily Note !", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
              padding: const EdgeInsets.all(10.0),
              color: Colors.purpleAccent,
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (BuildContext context) => new Home()));
              },
            )
          ],
        ),
      ),
    );
  }
}
