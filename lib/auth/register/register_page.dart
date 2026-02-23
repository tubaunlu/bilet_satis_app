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
    body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Text(
          'Sign up',
          style: TextStyle(
            fontFamily: 'Be Vietnam Pro',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
      child: TextField(
      decoration: InputDecoration(
      labelText: 'Username',
      labelStyle: TextStyle(color:Color(0xFFC89295)),
      filled: true,
      fillColor: Color(0xFF472426),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.all(18),
      ),
      style: TextStyle(color: Colors.white),
    
      ) 
      ),
    
    Padding(padding: 
    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
     child:TextField(
     decoration: InputDecoration(
     labelText: 'Email address',
    labelStyle: TextStyle(color: Color(0xFFC89295)),
    filled: true,
     fillColor: Color(0xFF472426),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,   
      ),
    contentPadding: EdgeInsets.all(18),
        ),
    style: TextStyle(color: Colors.white),
      )
      ),
    
   Padding(padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Color(0xFFC89295)),
        filled: true,
        fillColor: Color(0xFF472426),
     border: OutlineInputBorder(
     borderRadius: BorderRadius.circular(12),
     borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.all(18),
      ),
     style: TextStyle(color: Colors.white),
      ),
    ),
 
    SizedBox(height: 20),
    ElevatedButton(
     onPressed: () {},  
     style: ElevatedButton.styleFrom( 
     backgroundColor: Colors.red, 
    padding: EdgeInsets.symmetric(vertical:20, horizontal: 140),
    shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(30),
   )
   ),
      child: const Text(
    'Sign up',
     style: TextStyle(
     fontWeight: FontWeight.bold,
     fontSize: 18,
     color: Colors.white,
  ),
  ),
   ),  
    SizedBox(height: 20),
    Text("Already have an account?",
    style: TextStyle(
    color: Color(0xFFC89295),
    fontSize: 15,
   ),
 ),

  SizedBox(height: 20),
   ElevatedButton(
  onPressed:() {},  
  style: ElevatedButton.styleFrom(
  backgroundColor: Color(0xFF472426),
  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 140),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  )
   ),
  child: const Text(
 'Log in',
 style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  color: Colors.white,
    ),
   ),
  )  
      ]
      )     
     ),
  );
}}