import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:goodreads_app/firedatas.dart';
import 'firebase_options.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    home: LoginPage());
  }
}
