import 'package:flutter/material.dart';
import 'package:products_app/screens/screens_route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute:  'login',
      routes: {
        'login' : ( _ ) => LoginScreen(),
        'home' : ( _ ) => HomeScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)
      ),
    );
  }
}