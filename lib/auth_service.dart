// auth_service.dart

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up with email and password
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user; // Return user object if sign up successful
    } catch (e) {
      print(e.toString()); // Print error message if sign up fails
      return null;
    }
  }

  // Sign in with email and password
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user; // Return user object if sign in successful
    } catch (e) {
      print(e.toString()); // Print error message if sign in fails
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut(); // Sign out the current user
  }
}
