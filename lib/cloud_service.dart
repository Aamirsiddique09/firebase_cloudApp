import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FetchValueScreen extends StatefulWidget {
  const FetchValueScreen({super.key});

  @override
  _FetchValueScreenState createState() => _FetchValueScreenState();
}

class _FetchValueScreenState extends State<FetchValueScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? email;

  @override
  void initState() {
    super.initState();
    fetchEmail();
  }

  Future<void> fetchEmail() async {
    try {
      DocumentSnapshot userDoc = await _firestore.collection('users').doc('o6IXCpieKsv8zIdL3L98').get();
      if (userDoc.exists) {
        setState(() {
          email = userDoc['email'];
        });
      } else {
        setState(() {
          email = 'User not found';
        });
      }
    } catch (e) {
      setState(() {
        email = 'Error fetching data';
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Value from Firestore'),
      ),
      body: Center(
        child: email == null
            ? CircularProgressIndicator()
            : Text(
                'Email: $email',
                style: TextStyle(fontSize: 24),
              ),
      ),
    );
  }
}
