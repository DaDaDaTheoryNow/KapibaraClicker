// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InfoStartScreen extends StatefulWidget {
  late String name;
  InfoStartScreen({Key, key, required this.name}) : super(key: key);

  @override
  State<InfoStartScreen> createState() => _InfoStartScreenState();
}

class _InfoStartScreenState extends State<InfoStartScreen> {
  @override
  Widget build(BuildContext context) {
    final image = AssetImage('assets/1203_oooo.plus.png');
    return Container(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 120, left: 5, bottom: 50),
                  child: Text(
                    "Добро пожаловать!",
                    style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image(
                      image: image,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, bottom: 34, top: 5),
                  child: Text("${widget.name}",
                      style: TextStyle(
                          color: Color.fromARGB(255, 216, 213, 206),
                          fontSize: 43,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6, top: 20, bottom: 10),
                  child: RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                            text: "ПОДСКАЗКА:",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        TextSpan(
                            text: "  Для начала прогресса",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                            )),
                        TextSpan(
                            text: " нажмите",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.access_time_outlined,
                    color: Color.fromARGB(255, 237, 175, 175),
                    size: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: RaisedButton(
                    onLongPress: () {
                      Fluttertoast.showToast(
                          msg: "ТикТок: @dadada.dart💜",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/general', (route) => false);
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 2),
                            )
                          ],
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(80.0))),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: const Text('Начать свой путь...',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                )
              ],
            )));
  }
}
