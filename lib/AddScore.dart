import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScore extends StatefulWidget {
  String nameTeam1, nameTeam2;
  AddScore({this.nameTeam1, this.nameTeam2});

  @override
  _AddScoreState createState() => _AddScoreState(nameTeam1, nameTeam2);
}

class _AddScoreState extends State<AddScore> {
  int scoreTeam1 = 0;
  int scoreTeam2 = 0;

  String nameTeam1, nameTeam2;
  _AddScoreState(this.nameTeam1, this.nameTeam2);

  void plusScore1() {
    setState(() {
      scoreTeam1++;
    });
  }

  void minusScore1() {
    if (scoreTeam1 != 0) {
      setState(() {
        scoreTeam1--;
      });
    } else {
      setState(() {
        scoreTeam1 = 0;
      });
    }
  }

  void plusScore2() {
    setState(() {
      scoreTeam2++;
    });
  }

  void minusScore2() {
    if (scoreTeam2 != 0) {
      setState(() {
        scoreTeam2--;
      });
    } else {
      setState(() {
        scoreTeam2 = 0;
      });
    }
  }

  void resetValue() {
    setState(() {
      scoreTeam1 = 0;
      scoreTeam2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 125,
                    color: Colors.blue[100],
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    child: Text(scoreTeam1.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 75,
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 125,
                    color: Colors.blue[100],
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    child: Text(scoreTeam2.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 75,
                            fontWeight: FontWeight.w700)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    // height: 25,
                    // color: Colors.grey,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 16.0, left: 16.0),
                    // margin: EdgeInsets.all(16),
                    child: Text("$nameTeam1",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    // height: 65,
                    // color: Colors.grey,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 16.0, left: 16.0),
                    child: Text("$nameTeam2",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 65,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(16),
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          minusScore1();
                        },
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 65,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(16),
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          minusScore2();
                        },
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 65,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(16),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          plusScore1();
                        },
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 65,
                      color: Colors.blueAccent,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(16),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () {
                          plusScore2();
                        },
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 290,
                    height: 65,
                    // color: Colors.blueAccent,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    child: FlatButton(
                      onPressed: () {
                        resetValue();
                      },
                      color: Colors.blueGrey[200],
                      minWidth: 390,
                      height: 50,
                      textColor: Colors.white,
                      child:
                          const Text('Reset', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
