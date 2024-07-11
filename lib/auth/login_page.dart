import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internee_pk/cloud_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(hintText: 'Enter your email'),
            ),
            SizedBox(height: 8.0),
            TextField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(hintText: 'Enter your password'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                overlayColor: Colors.white,
              ),
              onPressed: () async {
                try {
                  final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                  if (user != null) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const FetchValueScreen()));
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
