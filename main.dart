// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          '/evil': (context) => EvilWay()
        },
      )));
}
