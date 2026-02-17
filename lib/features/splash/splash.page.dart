import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget{
  const SplashPage({super.key});
  @override
  
  State<SplashPage>  createState() => _SplashPageState();
}
class _SplashPageState  extends State<SplashPage> with SingleTickerProviderStateMixin{
 late AnimationController _controller;
 late Animation<double> _opacityAnimation;
 late Animation<double> _rotationAnimation;

 @override 
 void initState(){
    super.initState();
     _controller = AnimationController(duration:const Duration(seconds: 3), vsync:this,);
     _opacityAnimation = Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent:_controller, curve: Curves.easeIn),);
   _rotationAnimation = Tween<double>(begin: 0,end: 2 * 3.14159).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut),);
    _controller.forward();

 Future.delayed(Duration(seconds:3),() {
  if(!mounted) return;
 Navigator.pushReplacementNamed(context, '/register');
 } );
 }
 @override
  void dispose(){
  _controller.dispose();
  super.dispose();
 }
 @override 
 Widget build(BuildContext context){
  return Scaffold(
  backgroundColor: Colors.black, 
  body: Center(
   child: AnimatedBuilder(animation: _controller, builder: (context,child) { return Transform.rotate(angle: _rotationAnimation.value,
     child: Opacity(opacity: _opacityAnimation.value ,
     child: child,
     ),
   ); 
   },
   child: Image.asset('assets/images/logo.png'),
   
   ),  
  ));

 } 
}


