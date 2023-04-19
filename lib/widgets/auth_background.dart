import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
   
   final Widget child;

  const AuthBackground({
    super.key, 
    required this.child
    });
  
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _purpleBox(),

          _HeaderIcon(),

          this.child,
        ],  
      ),

    );
  }
}

class _HeaderIcon extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only( top: 30),
        child: Icon(Icons.person_pin, color: Colors.white, size: 100,),
      ),
    );
  }
}


class _purpleBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(child: _Bubble(), top: 80, left: 10,),
          Positioned(child: _Bubble(), top: 150, left: 50,),
          Positioned(child: _Bubble(), top: -20, left: 50,),

          Positioned(child: _Bubble(), top: 80, right: 10,),
          Positioned(child: _Bubble(), top: 150, right: 50,),
          Positioned(child: _Bubble(), top: -20, right: 50,),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
    gradient:  LinearGradient(
      colors: [
        Color.fromRGBO(63, 63, 156, 1), 
        Color.fromRGBO(90, 70, 178, 1)
      ]
    )
  );
}


class _Bubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );
  }
}