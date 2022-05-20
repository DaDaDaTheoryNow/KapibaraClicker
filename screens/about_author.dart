import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutAuthor extends StatelessWidget {
  const AboutAuthor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 35, 35),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '✓Смирнов Владислав✓',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: RichText(
                  textDirection: TextDirection.ltr,
                  text: const TextSpan(
                    text: "Создатель даного чуда",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: " чуда",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 15),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Смирнов Владислав",
                            style: TextStyle(
                                color: Color.fromARGB(
                                  255,
                                  212,
                                  0,
                                  255,
                                ),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 400),
                    child: Column(
                      children: [
                        const Text(
                          'Поблагодарить создателя',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: "Вы поблагодарили создателя😊",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor:
                                        Color.fromARGB(255, 26, 102, 143),
                                    textColor: Colors.white,
                                    fontSize: 24.0);
                              },
                              child: const Icon(
                                Icons.add_reaction_rounded,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
