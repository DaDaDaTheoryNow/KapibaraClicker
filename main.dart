// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Capibara_cliker/screens/achiv_evil_top.dart';
import 'package:Capibara_cliker/screens/achiv_kind_top.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Capibara_cliker/screens/about_author.dart';
import 'package:Capibara_cliker/screens/achiv_evil.dart';
import 'package:Capibara_cliker/screens/achiv_kind.dart';
import 'package:Capibara_cliker/screens/shop.dart';
import 'package:Capibara_cliker/screens/general_screen.dart';
import 'package:Capibara_cliker/screens/auth_screen.dart';
import 'package:Capibara_cliker/service/auth.dart';
import 'package:Capibara_cliker/service/user.dart';
import 'package:Capibara_cliker/service/way_opening.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(milliseconds: 1350));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(initialization);
  await Firebase.initializeApp();

  runApp(StreamProvider<UserAuth?>.value(
      value: AuthService().currentUser,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (context) => WayOpening(),
          '/auth': (context) => AuthScreen(),
          '/general': (context) => General(
                way_evil: false,
                way_kind: false,
              ),
          '/author': (context) => AboutAuthor(),
          '/shop': (context) => Shop(),
          '/kind': (context) => KindWay(),
          '/evil': (context) => EvilWay(),
          '/evil_achiv': (context) => EvilWayAchiv(),
          '/kind_achiv': (context) => KindWayAchiv(),
        },
      )));
}
