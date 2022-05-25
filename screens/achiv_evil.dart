// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Capibara_cliker/screens/achiv_evil_top.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EvilWay extends StatefulWidget {
  const EvilWay({Key? key}) : super(key: key);

  @override
  State<EvilWay> createState() => _EvilWayState();
}

int _myCount = 0;

// блок -1
bool minus1 = false;
bool minus1_text = false;
bool minus1_textw = false;
bool minus1_join = true;
bool minus1_equip_text = false;
// конец блок -1

// блок -2
bool minus2 = false;
bool minus2_text = false;
bool minus2_textw = false;
bool minus2_join = true;
bool minus2_equip_text = false;
// конец блок -2

// блок -3
bool minus3 = false;
bool minus3_text = false;
bool minus3_textw = false;
bool minus3_join = true;
bool minus3_equip_text = false;
// конец блок -3

// блок -4
bool minus4 = false;
bool minus4_text = false;
bool minus4_textw = false;
bool minus4_join = true;
bool minus4_equip_text = false;
// конец блок -4

// блок -5
bool minus5 = false;
bool minus5_text = false;
bool minus5_textw = false;
bool minus5_join = true;
bool minus5_equip_text = false;
// конец блок -5

class _EvilWayState extends State<EvilWay> {
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
      minus1 = prefs.getBool("myMinus1")!;
      minus1_text = prefs.getBool("myMinus1_text")!;
      minus1_textw = prefs.getBool("myMinus1_textw")!;
      minus1_join = prefs.getBool("myMinus1_join")!;
      minus1_equip_text = prefs.getBool("myMinus1_text_equip")!;
      // конец получение +1

      // получение +2
      minus2 = prefs.getBool("myMinus2")!;
      minus2_text = prefs.getBool("myMinus2_text")!;
      minus2_textw = prefs.getBool("myMinus2_textw")!;
      minus2_join = prefs.getBool("myMinus2_join")!;
      minus2_equip_text = prefs.getBool("myMinus2_text_equip")!;
      // конец получение +2

      // получение +3
      minus3 = prefs.getBool("myMinus3")!;
      minus3_text = prefs.getBool("myMinus3_text")!;
      minus3_textw = prefs.getBool("myMinus3_textw")!;
      minus3_join = prefs.getBool("myMinus3_join")!;
      minus3_equip_text = prefs.getBool("myMinus3_text_equip")!;
      // конец получение +3

      // получение +4
      minus4 = prefs.getBool("myMinus4")!;
      minus4_text = prefs.getBool("myMinus4_text")!;
      minus4_textw = prefs.getBool("myMinus4_textw")!;
      minus4_join = prefs.getBool("myMinus4_join")!;
      minus4_equip_text = prefs.getBool("myMinus4_text_equip")!;
      // конец получение +4

      // получение +5
      minus5 = prefs.getBool("myMinus5")!;
      minus5_text = prefs.getBool("myMinus5_text")!;
      minus5_textw = prefs.getBool("myMinus5_textw")!;
      minus5_join = prefs.getBool("myMinus5_join")!;
      minus5_equip_text = prefs.getBool("myMinus5_text_equip")!;
      // конец получение +5
    });
  }

  setMinus1_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1_text = await prefs.setBool("myMinus1_text", true);
      minus1_textw = await prefs.setBool("myMinus1_textw", true);
    });
  }

  setMinus1True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1 = await prefs.setBool("myMinus1", true);
      minus1_equip_text = await prefs.setBool("myMinus1_text_equip", true);
    });
  }

  setMinus1False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1 = await prefs.setBool("myMinus1", false);
      minus1_equip_text = await prefs.setBool("myMinus1_text_equip", false);
    });
  }

  setMinus1Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1_join = await prefs.setBool("myMinus1_join", false);
      minus1_join = prefs.getBool("myMinus1_join")!;
    });
  }

  setMinus1Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 65;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока -1

  // блок -2

  setMinus2_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus2_text = await prefs.setBool("myMinus2_text", true);
      minus2_textw = await prefs.setBool("myMinus2_textw", true);
    });
  }

  setMinus2True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus2 = await prefs.setBool("myMinus2", true);
      minus2_equip_text = await prefs.setBool("myMinus2_text_equip", true);
    });
  }

  setMinus2False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus2 = await prefs.setBool("myMinus2", false);
      minus2_equip_text = await prefs.setBool("myMinus2_text_equip", false);
    });
  }

  setMinus2Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus2_join = await prefs.setBool("myMinus2_join", false);
      minus2_join = prefs.getBool("myMinus2_join")!;
    });
  }

  setMinus2Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 556;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока +2

  // блок +3

  setMinus3_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus3_text = await prefs.setBool("myMinus3_text", true);
      minus3_textw = await prefs.setBool("myMinus3_textw", true);
    });
  }

  setMinus3True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus3 = await prefs.setBool("myMinus3", true);
      minus3_equip_text = await prefs.setBool("myMinus3_text_equip", true);
    });
  }

  setMinus3False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus3 = await prefs.setBool("myMinus3", false);
      minus3_equip_text = await prefs.setBool("myMinus3_text_equip", false);
    });
  }

  setMinus3Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus3_join = await prefs.setBool("myMinus3_join", false);
      minus3_join = prefs.getBool("myMinus3_join")!;
    });
  }

  setMinus3Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 2940;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока -3

  // блок -4

  setMinus4_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus4_text = await prefs.setBool("myMinus4_text", true);
      minus4_textw = await prefs.setBool("myMinus4_textw", true);
    });
  }

  setMinus4True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus4 = await prefs.setBool("myMinus4", true);
      minus4_equip_text = await prefs.setBool("myMinus4_text_equip", true);
    });
  }

  setMinus4False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus4 = await prefs.setBool("myMinus4", false);
      minus4_equip_text = await prefs.setBool("myMinus4_text_equip", false);
    });
  }

  setMinus4Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus4_join = await prefs.setBool("myMinus4_join", false);
      minus4_join = prefs.getBool("myMinus4_join")!;
    });
  }

  setMinus4Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 5099;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока -4

  // блок -5
  setMinus5_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus5_text = await prefs.setBool("myMinus5_text", true);
      minus5_textw = await prefs.setBool("myMinus5_textw", true);
    });
  }

  setMinus5True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus4 = await prefs.setBool("myMinus5", true);
      minus4_equip_text = await prefs.setBool("myMinus5_text_equip", true);
    });
  }

  setMinus5False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus5 = await prefs.setBool("myMinus5", false);
      minus5_equip_text = await prefs.setBool("myMinus5_text_equip", false);
    });
  }

  setMinus5Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus5_join = await prefs.setBool("myMinus5_join", false);
      minus5_join = prefs.getBool("myMinus5_join")!;
    });
  }

  setMinus5Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 9999;
      await prefs.setInt("myCount", _myCount);
    });
  }
  // конец блока -5

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 109),
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
            padding: EdgeInsets.only(top: 10, right: 155),
            child: Text(
              "Путь зла",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 17, 0),
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
                              child: EvilWayAchiv()));
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
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // блок -1
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
                                    text: "Начало пути зла",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (minus1_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
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
                                        "    Этот GamePass будет прибавлять на -1 единицу больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Убавления воды'",
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
                                  if (minus1_text == true) {
                                    setState(() {
                                      if (minus1_equip_text == false) {
                                        setMinus1True();
                                        minus1_equip_text = true;
                                        minus1 = false;
                                      } else if (minus1_equip_text == true) {
                                        minus1_equip_text = false;
                                        minus1 = false;
                                        setMinus1False();
                                      }

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true) {
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

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true &&
                                          minus3_equip_text == true) {
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
                                  if (_myCount <= -65) {
                                    if (minus1_join == true) {
                                      setState(() {
                                        minus1_text = true;
                                        minus1_textw = true;
                                        setMinus1_text();
                                        setMinus1Open();
                                        setMinus1Join();
                                        minus1_equip_text == false;

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

                                  if (_myCount > -65) {
                                    if (minus1_join == true) {
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
                                child: (minus1_text
                                    ? (minus1_equip_text
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
                                                "Разблокировать(надо -65 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока -1

            // блок -2
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
                                    text: "Вы правда любите забирать?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    )),
                                (minus2_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
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
                                        "    Этот GamePass будет прибавлять на -4 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Убавления воды'",
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
                                  if (minus2_text == true) {
                                    setState(() {
                                      if (minus2_equip_text == false) {
                                        setMinus2True();
                                        minus2_equip_text = true;
                                        minus2 = true;
                                      } else if (minus2_equip_text == true) {
                                        minus2_equip_text = false;
                                        minus2 = true;
                                        setMinus2False();
                                      }

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true &&
                                          minus3_equip_text == true) {
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

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true) {
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
                                  if (_myCount <= -556) {
                                    if (minus2_join == true) {
                                      setState(() {
                                        minus2_text = true;
                                        minus2_textw = true;
                                        setMinus2_text();
                                        setMinus2Open();
                                        setMinus2Join();
                                        minus2_equip_text == false;

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

                                  if (_myCount > -556) {
                                    if (minus1_join == true) {
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
                                child: (minus2_text
                                    ? (minus2_equip_text
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
                                                "Разблокировать(надо -556 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока -2

            // блок -3
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
                                (minus3_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
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
                                        "    Этот GamePass будет прибавлять на -10 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Убавления воды'",
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
                                  if (minus3_text == true) {
                                    setState(() {
                                      if (minus3_equip_text == false) {
                                        setMinus3True();
                                        minus3_equip_text = true;
                                        minus3 = true;
                                      } else if (minus3_equip_text == true) {
                                        minus3_equip_text = false;
                                        minus3 = true;
                                        setMinus3False();
                                      }

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true &&
                                          minus3_equip_text == true) {
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
                                  if (_myCount <= -2940) {
                                    if (minus3_join == true) {
                                      setState(() {
                                        minus3_text = true;
                                        minus3_textw = true;
                                        setMinus3_text();
                                        setMinus3Open();
                                        setMinus3Join();
                                        minus3_equip_text == false;

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

                                  if (_myCount > -2940) {
                                    if (minus3_join == true) {
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
                                child: (minus3_text
                                    ? (minus3_equip_text
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
                                                "Разблокировать(надо -2940 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока -3

            // блок -4
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
                                (minus4_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
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
                                        "    Этот GamePass будет прибавлять на -15 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Убавления воды'",
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
                                  if (minus4_text == true) {
                                    setState(() {
                                      if (minus4_equip_text == false) {
                                        setMinus4True();
                                        minus4_equip_text = true;
                                        minus4 = true;
                                      } else if (minus4_equip_text == true) {
                                        minus4_equip_text = false;
                                        minus4 = true;
                                        setMinus4False();
                                      }

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true &&
                                          minus3_equip_text == true &&
                                          minus4_equip_text == true) {
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
                                  if (_myCount <= -5099) {
                                    if (minus4_join == true) {
                                      setState(() {
                                        minus4_text = true;
                                        minus4_textw = true;
                                        setMinus4_text();
                                        setMinus4Open();
                                        setMinus4Join();
                                        minus4_equip_text == false;

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

                                  if (_myCount > -5099) {
                                    if (minus3_join == true) {
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
                                child: (minus4_text
                                    ? (minus4_equip_text
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
                                                "Разблокировать(надо -5099 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока -4

            // блок -5
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
                                (minus5_textw
                                    ? WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.lock_open_sharp,
                                          size: 25,
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
                                        "    Этот GamePass будет прибавлять на -20 единиц больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Убавления воды'",
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
                                  if (minus5_text == true) {
                                    setState(() {
                                      if (minus5_equip_text == false) {
                                        setMinus5True();
                                        minus5_equip_text = true;
                                        minus5 = true;
                                      } else if (minus5_equip_text == true) {
                                        minus5_equip_text = false;
                                        minus5 = true;
                                        setMinus5False();
                                      }

                                      if (minus1_equip_text == true &&
                                          minus2_equip_text == true &&
                                          minus3_equip_text == true &&
                                          minus4_equip_text == true &&
                                          minus5_equip_text == true) {
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
                                  if (_myCount <= -9999) {
                                    if (minus5_join == true) {
                                      setState(() {
                                        minus5_text = true;
                                        minus5_textw = true;
                                        setMinus5_text();
                                        setMinus5Open();
                                        setMinus5Join();
                                        minus5_equip_text == false;

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

                                  if (_myCount > -9999) {
                                    if (minus3_join == true) {
                                      Fluttertoast.showToast(
                                          msg: "У вас нету -9999 очков!",
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
                                child: (minus5_text
                                    ? (minus5_equip_text
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
                                                "Разблокировать(надо -9999 очков)"),
                                          ],
                                        ),
                                      )),
                              )),
                        )
                      ],
                    )),
              ),
            ),
            // конец блока -4
          ],
        ),
      ),
    );
  }
}
