// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EvilWay extends StatefulWidget {
  const EvilWay({Key? key}) : super(key: key);

  @override
  State<EvilWay> createState() => _EvilWayState();
}

// блок -1
bool minus1 = false;
bool minus1_text = false;
bool minus1_textw = false;
bool minus1_join = true;
bool minus1_equip_text = false;
// конец блок -1

class _EvilWayState extends State<EvilWay> {
  int _myCount = 0;

  @override
  void initState() {
    super.initState();
    getCount();
  }

  getCount() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _myCount = prefs.getInt("myCount")!;
      minus1 = prefs.getBool("myMinus1")!;
      minus1_text = prefs.getBool("myMinus1_text")!;
      minus1_textw = prefs.getBool("myMinus1_textw")!;
      minus1_join = prefs.getBool("myMinus1_join")!;
      minus1_equip_text = prefs.getBool("myMinus1_text_equip")!;
    });
  }

  setPlus1_text() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1_text = await prefs.setBool("myMinus1_text", true);
      minus1_textw = await prefs.setBool("myMinus1_textw", true);
    });
  }

  setPlus1True() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1 = await prefs.setBool("myMinus1", true);
      minus1_equip_text = await prefs.setBool("myMinus1_text_equip", true);
    });
  }

  setPlus1False() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1 = await prefs.setBool("myMinus1", false);
      minus1_equip_text = await prefs.setBool("myMinus1_text_equip", false);
    });
  }

  setPlus1Join() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      minus1_join = await prefs.setBool("myMinus1_join", false);
      minus1_join = prefs.getBool("myMinus1_join")!;
    });
  }

  setPlus1Open() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() async {
      _myCount = prefs.getInt("myCount")!;

      _myCount += 65;
      await prefs.setInt("myCount", _myCount);
    });
  }

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
                color: Colors.red,
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
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Text("Перейти в достижения"),
                  ),
                ),
              ),
            ),
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
                                        "    Этот GamePass будет отнимать на 1 единицу больше     ",
                                  ),
                                  TextSpan(
                                    text:
                                        "            при нажатии на кнопку 'Отбавления воды'",
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
                                      minus1 = true;
                                      if (minus1_equip_text == false) {
                                        setPlus1True();
                                        minus1_equip_text = true;
                                      } else if (minus1_equip_text == true) {
                                        minus1_equip_text = false;
                                        setPlus1False();
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
                                        setPlus1_text();
                                        setPlus1Open();
                                        setPlus1Join();
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
                                          msg: "У вас нету -65 очков!",
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
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 200,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
