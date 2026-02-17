
import 'package:bilet_satis_app/auth/register/register_page.dart';
import 'package:bilet_satis_app/features/splash/splash.page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoTix',
       theme: ThemeData(
        primarySwatch: Colors.red,
       ),
   initialRoute: '/',
   routes: {
      '/': (context) => SplashPage(),
      '/register': (context) => RegisterPage(),
   },
    );

  }}
        