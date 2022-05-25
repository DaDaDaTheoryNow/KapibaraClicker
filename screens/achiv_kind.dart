// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:Capibara_cliker/screens/achiv_kind_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KindWay extends StatefulWidget {
  const KindWay({Key? key}) : super(key: key);

  @override
  State<KindWay> createState() => _KindWayState();
}

int _myCount = 0;

// блок +1
bool plus1 = false;
bool plus1_text = false;
bool plus1_textw = false;
bool plus1_join = true;
bool plus1_equip_text = false;
// конец блок +1

// блок +2
bool plus2 = false;
bool plus2_text = false;
bool plus2_textw = false;
bool plus2_join = true;
bool plus2_equip_text = false;
// конец блок +2

// блок +3
bool plus3 = false;
bool plus3_text = false;
bool plus3_textw = false;
bool plus3_join = true;
bool plus3_equip_text = false;
// конец блок +3

// блок +4
bool plus4 = false;
bool plus4_text = false;
bool plus4_textw = false;
bool plus4_join = true;
bool plus4_equip_text = false;
// конец блок +4

// блок +5
bool plus5 = false;
bool plus5_text = false;
bool plus5_textw = false;
bool plus5_join = true;
bool plus5_equip_text = false;
// конец блок +5

class _KindWayState extends State<KindWay> {
  @override
  void initState() {
    super.initState();
    getCount();
  }

  // блок +1
  getCount() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _myCount = prefs.getInt("myCount")!;

      // получение +1
      plus1 = prefs.getBool("myPlus1")!;
      plus1_text = prefs.getBool("myPlus1_text")!;
      plus1_textw = prefs.getBool("myPlus1_textw")!;
      plus1_join = prefs.getBool("myPlus1_join")!;
      plus1_equip_text = prefs.getBool("myPlus1_text_equip")!;
      // конец получение +1

      // получение +2
      plus2 = prefs.getBool("myPlus2")!;
      plus2_text = prefs.getBool("myPlus2_text")!;
      plus2_textw = prefs.getBool("myPlus2_textw")!;
      plus2_join = prefs.getBool("myPlus2_join")!;
      plus2_equip_text = prefs.getBool("myPlus2_text_equip")!;
      // конец получение +2

      // получение +3
      plus3 = prefs.getBool("myPlus3")!;
      plus3_text = prefs.getBool("myPlus3_text")!;
      plus3_textw = prefs.getBool("myPlus3_textw")!;
      plus3_join = prefs.getBool("myPlus3_join")!;
      plus3_equip_text = prefs.getBool("myPlus3_text_equip")!;
      // конец получение +3

      // получение +4
      plus4 = prefs.getBool("myPlus4")!;
      plus4_text = prefs.getBool("myPlus4_text")!;
      plus4_textw = prefs.getBool("myPlus4_textw")!;
      plus4_join = prefs.getBool("myPlus4_join")!;
      plus4_equip_text = prefs.getBool("myPlus4_text_equip")!;
      // конец получение +4

      // получение +5
      plus5 = prefs.getBool("myPlus5")!;
      plus5_text = prefs.getBool("myPlus5_text")!;
      plus5_textw = prefs.getBool("myPlus5_textw")!;
      plus5_join = prefs.getBool("myPlus5_join")!;
      plus5_equip_text = prefs.getBool("myPlus5_text_equip")!;
      // конец получение +5
    });
  }

  setPlus1_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus1_text = await prefs.setBool("myPlus1_text", true);
      plus1_textw = await prefs.setBool("myPlus1_textw", true);
    });
  }

  setPlus1True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus1 = await prefs.setBool("myPlus1", true);
      plus1_equip_text = await prefs.setBool("myPlus1_text_equip", true);
    });
  }

  setPlus1False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus1 = await prefs.setBool("myPlus1", false);
      plus1_equip_text = await prefs.setBool("myPlus1_text_equip", false);
    });
  }

  setPlus1Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus1_join = await prefs.setBool("myPlus1_join", false);
      plus1_join = prefs.getBool("myPlus1_join")!;
    });
  }

  setPlus1Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount -= 65;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +1

  // блок +2

  setPlus2_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus2_text = await prefs.setBool("myPlus2_text", true);
      plus2_textw = await prefs.setBool("myPlus2_textw", true);
    });
  }

  setPlus2True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus2 = await prefs.setBool("myPlus2", true);
      plus2_equip_text = await prefs.setBool("myPlus2_text_equip", true);
    });
  }

  setPlus2False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus2 = await prefs.setBool("myPlus2", false);
      plus2_equip_text = await prefs.setBool("myPlus2_text_equip", false);
    });
  }

  setPlus2Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus2_join = await prefs.setBool("myPlus2_join", false);
      plus2_join = prefs.getBool("myPlus2_join")!;
    });
  }

  setPlus2Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount -= 556;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +2

  // блок +3

  setPlus3_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus3_text = await prefs.setBool("myPlus3_text", true);
      plus3_textw = await prefs.setBool("myPlus3_textw", true);
    });
  }

  setPlus3True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus3 = await prefs.setBool("myPlus3", true);
      plus3_equip_text = await prefs.setBool("myPlus3_text_equip", true);
    });
  }

  setPlus3False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus3 = await prefs.setBool("myPlus3", false);
      plus3_equip_text = await prefs.setBool("myPlus3_text_equip", false);
    });
  }

  setPlus3Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus3_join = await prefs.setBool("myPlus3_join", false);
      plus3_join = prefs.getBool("myPlus3_join")!;
    });
  }

  setPlus3Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount -= 2940;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +3

  // блок +4

  setPlus4_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus4_text = await prefs.setBool("myPlus4_text", true);
      plus4_textw = await prefs.setBool("myPlus4_textw", true);
    });
  }

  setPlus4True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus4 = await prefs.setBool("myPlus4", true);
      plus4_equip_text = await prefs.setBool("myPlus4_text_equip", true);
    });
  }

  setPlus4False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus4 = await prefs.setBool("myPlus4", false);
      plus4_equip_text = await prefs.setBool("myPlus4_text_equip", false);
    });
  }

  setPlus4Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus4_join = await prefs.setBool("myPlus4_join", false);
      plus4_join = prefs.getBool("myPlus4_join")!;
    });
  }

  setPlus4Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount -= 5099;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +4

  // блок +5
  setPlus5_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus5_text = await prefs.setBool("myPlus5_text", true);
      plus5_textw = await prefs.setBool("myPlus5_textw", true);
    });
  }

  setPlus5True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus4 = await prefs.setBool("myPlus5", true);
      plus4_equip_text = await prefs.setBool("myPlus5_text_equip", true);
    });
  }

  setPlus5False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus5 = await prefs.setBool("myPlus5", false);
      plus5_equip_text = await prefs.setBool("myPlus5_text_equip", false);
    });
  }

  setPlus5Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      plus5_join = await prefs.setBool("myPlus5_join", false);
      plus5_join = prefs.getBool("myPlus5_join")!;
    });
  }

  setPlus5Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount -= 9999;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +5

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () {
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                });
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 135),
            child: Text(
              "Путь добра",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 35, 35),
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 65,
                  width: 230,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 600),
                              child: KindWayAchiv()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    splashColor: Colors.red[200],
                    child: Text("Перейти в достижения"),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Возможны визуальные баги!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 17, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // блок +1
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
                child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 55, top: 4),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Начало пути добра",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (plus1_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                      )
                                    : WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_outline_sharp,
                                          size: 25,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "    Этот GamePass будет прибавлять на 1 единицу больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Добавления воды'",
                                  )
                                ]))),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 43,
                              child: RaisedButton(
                                onLongPress: () {
                                  if (plus1_text == true) {
                                    setState(() {
                                      if (plus1_equip_text == false) {
                                        setPlus1True();
                                        plus1_equip_text = true;
                                        plus1 = false;
                                      } else if (plus1_equip_text == true) {
                                        plus1_equip_text = false;
                                        plus1 = false;
                                        setPlus1False();
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true &&
                                          plus3_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }
                                    });
                                  }
                                },
                                onPressed: () {
                                  if (_myCount >= 65) {
                                    if (plus1_join == true) {
                                      setState(() {
                                        plus1_text = true;
                                        plus1_textw = true;
                                        setPlus1_text();
                                        setPlus1Open();
                                        setPlus1Join();
                                        plus1_equip_text == false;

                                        Fluttertoast.showToast(
                                            msg: "Разблокировано!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      });
                                    }
                                  }

                                  if (_myCount < 65) {
                                    if (plus1_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету 65 очков!",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: (plus1_text
                                    ? (plus1_equip_text
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 9),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "✔Экипировано✔",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Экипировать(долгое нажатие)",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))
                                    : Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Разблокировать(надо 65 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока +1

            // блок +2
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
                child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 55, top: 4),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Вы правда любите помогать?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (plus2_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                      )
                                    : WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_outline_sharp,
                                          size: 25,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "    Этот GamePass будет прибавлять на 4 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Добавления воды'",
                                  )
                                ]))),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 43,
                              child: RaisedButton(
                                onLongPress: () {
                                  if (plus2_text == true) {
                                    setState(() {
                                      if (plus2_equip_text == false) {
                                        setPlus2True();
                                        plus2_equip_text = true;
                                        plus2 = true;
                                      } else if (plus2_equip_text == true) {
                                        plus2_equip_text = false;
                                        plus2 = true;
                                        setPlus2False();
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true &&
                                          plus3_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }
                                    });
                                  }
                                },
                                onPressed: () {
                                  if (_myCount >= 556) {
                                    if (plus2_join == true) {
                                      setState(() {
                                        plus2_text = true;
                                        plus2_textw = true;
                                        setPlus2_text();
                                        setPlus2Open();
                                        setPlus2Join();
                                        plus2_equip_text == false;

                                        Fluttertoast.showToast(
                                            msg: "Разблокировано!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      });
                                    }
                                  }

                                  if (_myCount < 556) {
                                    if (plus1_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету 556 очков!",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: (plus2_text
                                    ? (plus2_equip_text
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 9),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "✔Экипировано✔",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Экипировать(долгое нажатие)",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))
                                    : Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Разблокировать(надо 556 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока +2

            // блок +3
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
                child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 55, top: 4),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Ничто вас не остановит",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (plus3_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                      )
                                    : WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_outline_sharp,
                                          size: 25,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "    Этот GamePass будет прибавлять на 10 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Добавления воды'",
                                  )
                                ]))),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 43,
                              child: RaisedButton(
                                onLongPress: () {
                                  if (plus3_text == true) {
                                    setState(() {
                                      if (plus3_equip_text == false) {
                                        setPlus3True();
                                        plus3_equip_text = true;
                                        plus3 = true;
                                      } else if (plus3_equip_text == true) {
                                        plus3_equip_text = false;
                                        plus3 = true;
                                        setPlus3False();
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true &&
                                          plus3_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }
                                    });
                                  }
                                },
                                onPressed: () {
                                  if (_myCount >= 2940) {
                                    if (plus3_join == true) {
                                      setState(() {
                                        plus3_text = true;
                                        plus3_textw = true;
                                        setPlus3_text();
                                        setPlus3Open();
                                        setPlus3Join();
                                        plus3_equip_text == false;

                                        Fluttertoast.showToast(
                                            msg: "Разблокировано!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      });
                                    }
                                  }

                                  if (_myCount < 2940) {
                                    if (plus3_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету 2940 очков!",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: (plus3_text
                                    ? (plus3_equip_text
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 9),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "✔Экипировано✔",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Экипировать(долгое нажатие)",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))
                                    : Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Разблокировать(надо 2940 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока +3

            // блок +4
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
                child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 55, top: 4),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Why?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (plus4_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                      )
                                    : WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_outline_sharp,
                                          size: 25,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "    Этот GamePass будет прибавлять на 15 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Добавления воды'",
                                  )
                                ]))),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 43,
                              child: RaisedButton(
                                onLongPress: () {
                                  if (plus4_text == true) {
                                    setState(() {
                                      if (plus4_equip_text == false) {
                                        setPlus4True();
                                        plus4_equip_text = true;
                                        plus4 = true;
                                      } else if (plus4_equip_text == true) {
                                        plus4_equip_text = false;
                                        plus4 = true;
                                        setPlus4False();
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true &&
                                          plus3_equip_text == true &&
                                          plus4_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }
                                    });
                                  }
                                },
                                onPressed: () {
                                  if (_myCount >= 5099) {
                                    if (plus4_join == true) {
                                      setState(() {
                                        plus4_text = true;
                                        plus4_textw = true;
                                        setPlus4_text();
                                        setPlus4Open();
                                        setPlus4Join();
                                        plus4_equip_text == false;

                                        Fluttertoast.showToast(
                                            msg: "Разблокировано!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      });
                                    }
                                  }

                                  if (_myCount < 5099) {
                                    if (plus3_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету 5099 очков!",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: (plus4_text
                                    ? (plus4_equip_text
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 9),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "✔Экипировано✔",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Экипировать(долгое нажатие)",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))
                                    : Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Разблокировать(надо 5099 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока +4

            // блок +5
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
                child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 55, top: 4),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "This is end...",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (plus5_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
                                          color: Colors.green,
                                        ),
                                      )
                                    : WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_outline_sharp,
                                          size: 25,
                                        ),
                                      ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 30, right: 10),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text:
                                        "    Этот GamePass будет прибавлять на 20 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Добавления воды'",
                                  )
                                ]))),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 43,
                              child: RaisedButton(
                                onLongPress: () {
                                  if (plus5_text == true) {
                                    setState(() {
                                      if (plus5_equip_text == false) {
                                        setPlus5True();
                                        plus5_equip_text = true;
                                        plus5 = true;
                                      } else if (plus5_equip_text == true) {
                                        plus5_equip_text = false;
                                        plus5 = true;
                                        setPlus5False();
                                      }

                                      if (plus1_equip_text == true &&
                                          plus2_equip_text == true &&
                                          plus3_equip_text == true &&
                                          plus4_equip_text == true &&
                                          plus5_equip_text == true) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Вы использовали СУПЕР ЭКИПИРОВКУ!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      }
                                    });
                                  }
                                },
                                onPressed: () {
                                  if (_myCount >= 9999) {
                                    if (plus5_join == true) {
                                      setState(() {
                                        plus5_text = true;
                                        plus5_textw = true;
                                        setPlus5_text();
                                        setPlus5Open();
                                        setPlus5Join();
                                        plus5_equip_text == false;

                                        Fluttertoast.showToast(
                                            msg: "Разблокировано!",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      });
                                    }
                                  }

                                  if (_myCount < 9999) {
                                    if (plus3_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету 9999 очков!",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.SNACKBAR,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: (plus5_text
                                    ? (plus5_equip_text
                                        ? Padding(
                                            padding:
                                                const EdgeInsets.only(top: 9),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "✔Экипировано✔",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(top: 11),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Экипировать(долгое нажатие)",
                                                    style: TextStyle(
                                                      fontSize: 19,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))
                                    : Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Column(
                                          children: const [
                                            Text(
                                                "Разблокировать(надо 9999 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока +4
          ],
        ),
      ),
    );
  }
}
