import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Capibara_cliker/screens/general_screen.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

bool? way_select_evil = null;
bool? way_select_kind = null;

class _ShopState extends State<Shop> {
  select_kind() {
    setState(() {
      way_select_kind = true;
      select_kind_save();
      select_kind_help();
      var routes = MaterialPageRoute(
          builder: (BuildContext context) => General(
                way_kind: way_select_kind!,
                way_evil: true,
              ));
      Navigator.of(context).pushAndRemoveUntil(routes, (route) => false);
      Fluttertoast.showToast(
          msg: "Вы успешно выбрали добро!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  select_evil() {
    setState(() {
      way_select_evil = true;
      select_evil_save();
      select_evil_help();
      var routes = MaterialPageRoute(
          builder: (BuildContext context) => General(
                way_evil: way_select_evil!,
                way_kind: true,
              ));
      Navigator.of(context).pushAndRemoveUntil(routes, (route) => false);
      Fluttertoast.showToast(
          msg: "Вы успешно выбрали зло!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  select_evil_save() async {
    final prefs = await SharedPreferences.getInstance();
    way_select_evil = await prefs.setBool("evil_save", true);
    print('evil_save');
  }

  select_evil_help() async {
    final prefs = await SharedPreferences.getInstance();
    way_select_evil = await prefs.getBool("evil_save")!;
    print('evil_save_help');
  }

  select_kind_save() async {
    final prefs = await SharedPreferences.getInstance();
    way_select_evil = await prefs.setBool("kind_save", true);
    print('kind_save');
  }

  select_kind_help() async {
    final prefs = await SharedPreferences.getInstance();
    way_select_evil = await prefs.getBool("kind_save")!;
    print('evil_save_help');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 35, 35),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 120),
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
              "Магазин",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Стать на сторону помощи",
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: SizedBox(
                height: 75,
                width: 75,
                child: FloatingActionButton(
                  onPressed: select_kind,
                  child: const Icon(
                    Icons.add_moderator_outlined,
                    size: 60,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Сделай свой выбор!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Стать на сторону угнитения",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Center(
              child: SizedBox(
                height: 75,
                width: 75,
                child: FloatingActionButton(
                  onPressed: select_evil,
                  backgroundColor: Color.fromARGB(255, 119, 34, 34),
                  child: const Icon(
                    Icons.add_moderator_outlined,
                    size: 60,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
