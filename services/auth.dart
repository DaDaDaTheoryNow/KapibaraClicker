import 'package:firebase_auth/firebase_auth.dart';
import 'package:Capibara_cliker/service/user.dart';

class AuthService {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future<UserAuth?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return UserAuth.fromFirebase(user);
    } on FirebaseException catch (error) {
      return null;
    }
  }

  Future<UserAuth?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return UserAuth.fromFirebase(user);
    } on FirebaseException catch (error) {
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();
  }

  Stream<UserAuth?> get currentUser {
    return _fAuth
        .authStateChanges()
        .map((User? user) => user != null ? UserAuth.fromFirebase(user) : null);
  }
}
