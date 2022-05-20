import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Capibara_cliker/screens/general_screen.dart';
import 'package:Capibara_cliker/screens/start_screen.dart';
import 'package:Capibara_cliker/screens/auth_screen.dart';
import 'package:Capibara_cliker/service/user.dart';

class WayOpening extends StatelessWidget {
  const WayOpening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserAuth? user = Provider.of<UserAuth?>(context);
    final bool isLoggedIn = user != null;

    // ignore: dead_code, prefer_const_constructors
    return isLoggedIn
        ? General(way_evil: false, way_kind: false)
        : AuthScreen();
  }
}
