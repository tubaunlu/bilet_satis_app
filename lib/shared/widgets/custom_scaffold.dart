import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScaffold extends StatelessWidget{
final bool showBackButton;
final String title;
final Widget body;


const CustomScaffold({
  super.key,
  this.showBackButton = false,
  required this.title,
  required this.body,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color(0xFF221112),
   body: SafeArea(
   child: Column(
    children: [
     Padding(
     padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
     child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     showBackButton
         ? IconButton( 
           icon: const Icon(Icons.arrow_back),
           onPressed: () => Navigator.pop(context),
         )
      : const SizedBox(width: 48),
      Text(
      title,
      style: GoogleFonts.splineSans(
       textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
        color: Colors.white,

       )
      ) ,
      ), 
      ]
     )
     )  ],
   ) 
   ),
    );
  }
}