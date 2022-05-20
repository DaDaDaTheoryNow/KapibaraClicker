import 'package:firebase_auth/firebase_auth.dart';

class UserAuth {
  String? id;

  UserAuth.fromFirebase(User? user) {
    id = user!.uid;
  }
}
