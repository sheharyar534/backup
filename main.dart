import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/splishscreen.dart';
// import 'package:flutter_application_1/splishscreen.dar/t';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApppState();
}

class _MyApppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor:const Color(0xfffdaf17),
          textTheme: const TextTheme(
           headline1: TextStyle(fontSize: , Color(0xff)) 
          )
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
