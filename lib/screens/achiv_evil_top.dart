// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EvilWayAchiv extends StatefulWidget {
  const EvilWayAchiv({Key? key}) : super(key: key);

  @override
  State<EvilWayAchiv> createState() => _EvilWayAchivState();
}

const imageKill = AssetImage("assets/capibara_kill.jpg");
const imageKill_blur = AssetImage("assets/capibara_kill_blur.jpg");

int _myCount = 0;

bool capibara_kill = false;
bool capibara_kill_tw = false;
bool capibara_kill_join = true;

Widget _buttomWave() {
  return Flexible(
    child: Align(
      child: ClipPath(
        child: Container(
          color: Colors.white,
          height: 300,
        ),
        clipper: BottomWaveClipper(),
      ),
      alignment: Alignment.bottomCenter,
    ),
  );
}

class _EvilWayAchivState extends State<EvilWayAchiv> {
  @override
  void initState() {
    super.initState();
    getCount();
  }

  getCount() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _myCount = prefs.getInt("myCount")!;
      capibara_kill = prefs.getBool("myCapibaraMinus")!;
      capibara_kill_tw = prefs.getBool("myCapibaraMinus_finish_tw")!;
      capibara_kill_join = prefs.getBool("myCapibaraMinus_join")!;
    });
  }

  getFinish() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;
      _myCount += 50000;
      prefs.setInt("myCount", _myCount);
      capibara_kill = await prefs.setBool("myCapibaraMinus", true);
      capibara_kill_tw = await prefs.setBool("myCapibaraMinus_finish_tw", true);
      capibara_kill_join = await prefs.setBool("myCapibaraMinus_join", false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            "Достижения зла",
            style: TextStyle(color: Color.fromARGB(255, 255, 17, 0)),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color.fromARGB(255, 39, 35, 35),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Достижение для окончания игры!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
          (capibara_kill
              ? Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage("assets/capibara_kill.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 17, 0),
                            offset: Offset(5, 8),
                          )
                        ]),
                    child: Stack(
                      children: const [
                        Image(image: imageKill),
                        Positioned.fill(
                          child: Icon(
                            Icons.lock_outline_sharp,
                            color: Color.fromARGB(255, 255, 17, 0),
                            size: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage("assets/capibara_kill_blur.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 17, 0),
                            offset: Offset(5, 8),
                          )
                        ]),
                    child: Stack(
                      children: const [
                        Image(image: imageKill_blur),
                        Positioned.fill(
                          child: Icon(
                            Icons.lock_outline_sharp,
                            color: Color.fromARGB(255, 255, 17, 0),
                            size: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 70,
                width: 350,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  onPressed: () {
                    if (capibara_kill_join == true) {
                      if (_myCount <= -50000) {
                        setState(() {
                          capibara_kill = true;
                          capibara_kill_tw = true;
                          capibara_kill_join == false;
                          getCount();
                          getFinish();

                          Fluttertoast.showToast(
                              msg: "Разблокировано!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.SNACKBAR,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        });
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/", (route) => false);
                      } else {
                        Fluttertoast.showToast(
                            msg: "У вас нету -50000 очков!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    }
                  },
                  child: (capibara_kill_tw
                      ? Text("Получено!")
                      : Text("Открыть достижение(50000 очков)")),
                ),
              ),
            ),
          ),
          _buttomWave()
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height + 5);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
