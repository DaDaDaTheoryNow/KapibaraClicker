// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KindWay extends StatefulWidget {
  const KindWay({Key? key}) : super(key: key);

  @override
  State<KindWay> createState() => _KindWayState();
}

// блок +1
bool plus1 = false;
bool plus1_text = false;
bool plus1_textw = false;
bool plus1_join = true;
bool plus1_equip_text = false;
// конец блок -1

class _KindWayState extends State<KindWay> {
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
      plus1 = prefs.getBool("myPlus1")!;
      plus1_text = prefs.getBool("myPlus1_text")!;
      plus1_textw = prefs.getBool("myPlus1_textw")!;
      plus1_join = prefs.getBool("myPlus1_join")!;
      plus1_equip_text = prefs.getBool("myPlus1_text_equip")!;
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
                                      plus1 = true;
                                      if (plus1_equip_text == false) {
                                        setPlus1True();
                                        plus1_equip_text = true;
                                      } else if (plus1_equip_text == true) {
                                        plus1_equip_text = false;
                                        setPlus1False();
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
