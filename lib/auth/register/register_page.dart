import "package:flutter/material.dart";


class RegisterPage extends StatefulWidget {
     const RegisterPage({super.key});

   @override
    State<RegisterPage> createState() => _RegisterPageState();  
  }
  class _RegisterPageState extends State<RegisterPage>{
 
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xFF221112),
    body: Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Text(
          'Register Now',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Be Vietnam Pro',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
  }