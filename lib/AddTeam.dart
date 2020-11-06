import 'package:StatefulWidget/AddScore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AddScore.dart';

class AddTeam extends StatelessWidget {
  TextEditingController team1Controller = TextEditingController();
  TextEditingController team2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          // alignment: Alignment.centerLeft,

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 45.0, bottom: 120.0),
                child: (Text("scourecount",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w900)))),
            Container(
                margin: EdgeInsets.only(bottom: 5.0, right: 16.0, left: 16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Team 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900)),
                )),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(bottom: 25.0, right: 16.0, left: 16.0),
              child: TextField(
                controller: team1Controller,
                // onChanged: (text) {
                //   nameTeam1 = text;
                // },
                decoration: InputDecoration(
                  hintText: 'input your team name',
                  fillColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1,
                margin: EdgeInsets.only(bottom: 5.0, right: 16.0, left: 16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Team 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900)),
                )),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(bottom: 25.0, right: 16.0, left: 16.0),
              child: TextField(
                controller: team2Controller,
                // onChanged: (text) {
                //   nameTeam2 = text;
                // },
                decoration: InputDecoration(
                  hintText: 'input your team name',
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  // width: 290,
                  // height: 65,
                  // color: Colors.blueAccent,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 25.0),

                  child: RaisedButton(
                    child: Text('START',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    color: Colors.blueAccent[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                    onPressed: () {
                      var nameTeam1 = team1Controller.text;
                      var nameTeam2 = team2Controller.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddScore(
                                    nameTeam1: nameTeam1,
                                    nameTeam2: nameTeam2,
                                  )));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
