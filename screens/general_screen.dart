// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Capibara_cliker/screens/shop.dart';
import 'package:Capibara_cliker/service/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class General extends StatelessWidget {
  late bool way_evil;
  late bool way_kind;
  General({Key, key, required this.way_evil, required this.way_kind})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 35, 35),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Водопой",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      body: Gscreen(),
    );
  }
}

class Gscreen extends StatefulWidget {
  @override
  State<Gscreen> createState() => _GscreenState();
}

int _myCount = 0;
// блок +1
bool Getplus1 = false;
bool Getminus1 = false;
// конец блок +1
bool progress_start = false;

class _GscreenState extends State<Gscreen> {
  @override
  void initState() {
    super.initState();
    getCount();
  }

  gui_start_help() {
    if (way_select_evil == null || way_select_kind == null) {
      Fluttertoast.showToast(
          msg: "Вы начали прогресс!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
      start_help_save();
    }

    if (way_select_evil == true ||
        way_select_kind == false && way_select_evil == false ||
        way_select_kind == true) {
      Fluttertoast.showToast(
          msg: "Вы начали прогресс заново!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0);
      start_help_save();
    }
  }

  start_help_save() async {
    final prefs = await SharedPreferences.getInstance();

    way_select_evil = await prefs.setBool('evil_save', false);
    way_select_kind = await prefs.setBool('kind_save', false);
    progress_start = await prefs.setBool("Progress_start", true);
  }

  saveCount() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      prefs.setInt("myCount", _myCount);
    });
  }

  getCount() async {
    final prefs = await SharedPreferences.getInstance();
    Getplus1 = prefs.getBool("myPlus1")!;
    Getminus1 = prefs.getBool("myMinus1")!;
    progress_start = prefs.getBool("Progress_start")!;

    setState(() {
      saveCount();
      _myCount = prefs.getInt("myCount")!;
    });
  }

  void plus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _myCount = prefs.getInt("myCount")!;
      if (Getplus1 == true) {
        _myCount += 2;
      } else if (Getplus1 == false) {
        _myCount += 1;
      }
      saveCount();
    });
  }

  void minus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _myCount = prefs.getInt("myCount")!;
      if (Getminus1 == true) {
        _myCount -= 2;
      } else if (Getminus1 == false) {
        _myCount -= 1;
      }
      saveCount();
    });
  }

  setProgress_del() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      // блок +1
      prefs.setBool("myPlus1", false);
      Getplus1 = prefs.getBool("myPlus1")!;
      prefs.setBool("myPlus1_text", false);
      prefs.setBool("myPlus1_textw", false);
      prefs.setBool("myPlus1_join", true);
      prefs.setBool("myPlus1_text_equip", false);
      // конец блок +1
      prefs.setInt("myCount", 0);
      _myCount = prefs.getInt("myCount")!;

      // блок -1
      prefs.setBool("myMinus1", false);
      Getplus1 = prefs.getBool("myPlus1")!;
      prefs.setBool("myMinus1_text", false);
      prefs.setBool("myMinus1_textw", false);
      prefs.setBool("myMinus1_join", true);
      prefs.setBool("myMinus1_text_equip", false);
      // конец блок -1

      getCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: SizedBox(
                width: 500,
                height: 52,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: RaisedButton(
                    splashColor: Colors.black,
                    highlightColor: Colors.grey,
                    color: Colors.white,
                    child: Text("О Авторе",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/author", (route) => true);
                    },
                  ),
                ))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 5),
            child: FlatButton.icon(
              onPressed: () {
                gui_start_help();
                setState(() {
                  setProgress_del();
                });
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.access_time_outlined,
                  color: Colors.redAccent,
                  size: 40,
                ),
              ),
              label: SizedBox.shrink(),
              color: Colors.white,
            ),
          ),
          FlatButton.icon(
            onPressed: () {
              AuthService().logOut();
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              Fluttertoast.showToast(
                  msg: "Вы успешно вышли с аккаунта!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            icon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.logout,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            label: SizedBox.shrink(),
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "      Информация о создателе             ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    )),
                TextSpan(
                    text: "Прогресс       Выход",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            ),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              splashColor: Colors.black,
              highlightColor: Colors.grey,
              color: Color.fromARGB(255, 95, 221, 137),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                way_select_evil = await prefs.getBool('evil_save')!;
                way_select_kind = await prefs.getBool('kind_save')!;
                if (way_select_kind == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/kind', (route) => false);
                  print('добро');
                }
                if (way_select_evil == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/evil', (route) => false);
                  print('зло');
                }
                if (way_select_kind == false && way_select_evil == false) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/shop', (route) => false);
                  print('хз');
                }

                if (progress_start = false) {
                  Fluttertoast.showToast(
                      msg: "Вы не начали прогресс!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              child: Text(
                "Магазин",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 6, top: 35, bottom: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: const [
                    TextSpan(
                        text: "ПОДСКАЗКА:",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    TextSpan(
                        text: "  Для начала/начала заново прогресса",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text:
                            " нажмите                                                   ",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                    WidgetSpan(
                        child: Icon(
                      Icons.access_time_outlined,
                      size: 35,
                      color: Colors.redAccent,
                    ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 110, left: 0),
            child: Text("Вода капибар",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 100, bottom: 25),
            child: Text("$_myCount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 0),
                      child: SizedBox(
                        width: 75,
                        height: 75,
                        child: FloatingActionButton(
                          splashColor: Colors.cyan,
                          onPressed: minus,
                          child: Icon(Icons.remove),
                        ),
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 0, right: 30),
                    child: SizedBox(
                      width: 75,
                      height: 75,
                      child: FloatingActionButton(
                        onPressed: plus,
                        splashColor: Colors.cyan,
                        child: Icon(Icons.add),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
