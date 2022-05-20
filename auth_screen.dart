// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Capibara_cliker/screens/start_screen.dart';
import 'package:Capibara_cliker/service/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Capibara_cliker/service/user.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final imgCap1 = AssetImage("assets/420_oooo.plus.png");
  final imgCap2 = AssetImage("assets/529_oooo.plus.png");
  final imgCap3 = AssetImage("assets/1203_oooo.plus.png");
  final imgCap4 = AssetImage("assets/1529_oooo.plus.png");
  final imgCap5 = AssetImage("assets/1834_oooo.plus.png");

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  late String _email;
  late String _name;
  late String _password;
  bool showLogin = true;
  int helpCap = 1;

  final AuthService _authService = AuthService();

  List listImagesnotFound = [
    "assets/420_oooo.plus.png",
    "assets/529_oooo.plus.png",
    "assets/1203_oooo.plus.png",
    "assets/1529_oooo.plus.png",
    "assets/1834_oooo.plus.png",
  ];
  Random? rnd;

  Widget buildImage(BuildContext context) {
    int min = 0;
    int max = listImagesnotFound.length - 1;
    rnd = Random();
    int r = min + rnd!.nextInt(max - min);
    String image_name = listImagesnotFound[r].toString();

    return Image.asset(image_name);
  }

  @override
  Widget build(BuildContext context) {
    Widget _logo() {
      return Align(
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: GestureDetector(
            child: buildImage(context),
            onTap: () {
              setState(() {
                Fluttertoast.showToast(
                    msg: "tt: @dadada.dart",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              });
            },
          ),
        ),
      );
    }

    Widget _input(Icon icon, String hint, TextEditingController controller,
        bool obscure) {
      return Container(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white30,
                  fontSize: 25),
              hintText: hint,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 3)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54, width: 1)),
              prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: IconTheme(
                      data: IconThemeData(color: Colors.white), child: icon))),
        ),
      );
    }

    Widget _button(String text, func()) {
      return RaisedButton(
        splashColor: Colors.black,
        highlightColor: Colors.grey,
        color: Colors.white,
        child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            )),
        onPressed: () {
          func();
        },
      );
    }

    Widget _form(String label, func()) {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child:
                  _input(Icon(Icons.email), "EMAIL", _emailController, false),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(),
              child: _input(
                  Icon(Icons.lock), "PASSWORD", _passwordController, true),
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.only(),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: _button(label, func)),
            )
          ],
        ),
      );
    }

    Widget _Regform(String label, func()) {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _input(Icon(Icons.verified_user_sharp), "Name",
                  _nameController, false),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(),
              child:
                  _input(Icon(Icons.email), "EMAIL", _emailController, false),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(),
              child: _input(
                  Icon(Icons.lock), "PASSWORD", _passwordController, true),
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.only(),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: _button(label, func)),
            )
          ],
        ),
      );
    }

    void _LoginbuttonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;

      if (_email.isEmpty || _password.isEmpty) return;

      UserAuth? user = await _authService.signInWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
        Fluttertoast.showToast(
            msg: "Невозможно зайти, проверьте свой логин/пороль",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: "Успешно!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        _emailController.clear();
        _passwordController.clear();
      }
    }

    void _RegisterbuttonAction() async {
      _email = _emailController.text;
      _password = _passwordController.text;
      _name = _nameController.text;

      if (_email.isEmpty || _password.isEmpty || _name.isEmpty) return;

      UserAuth? user = await _authService.registerWithEmailAndPassword(
          _email.trim(), _password.trim());
      if (user == null) {
        Fluttertoast.showToast(
            msg: "Невозможно зарегистрироваться, проверьте свой данные",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        var routes = MaterialPageRoute(
            builder: (BuildContext context) => InfoStartScreen(name: _name));
        Navigator.of(context).push(routes);
        Fluttertoast.showToast(
            msg: "Успешно!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        _emailController.clear();
        _passwordController.clear();
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          _logo(),
          (showLogin
              ? Column(
                  children: [
                    _form("Зайти", _LoginbuttonAction),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                        child: GestureDetector(
                          child: Text(
                              "Ещё не зарегистрирован? Зарегуйся сейчас!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                          onTap: () {
                            setState(() {
                              showLogin = false;
                            });
                          },
                        ))
                  ],
                )
              : Column(
                  children: [
                    _Regform("Зарегистрироваться", _RegisterbuttonAction),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                        child: GestureDetector(
                          child:
                              Text("Уже зарегистрирован? Логинься уже сейчас!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),
                          onTap: () {
                            setState(() {
                              showLogin = true;
                            });
                          },
                        ))
                  ],
                ))
        ],
      ),
    );
  }
}
