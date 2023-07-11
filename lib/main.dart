import 'package:flutter/material.dart';
import 'package:news1/home/home_screen.dart';
import 'package:news1/my_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName :(context)=>HomeScreen(),
      },
      theme: MyTheme.LightTheme,
    );
  }
}
