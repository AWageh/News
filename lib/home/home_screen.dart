import 'package:flutter/material.dart';
import 'package:news1/%20categories/categorie_widget.dart';
import 'package:news1/home/home_drawer.dart';
import 'package:news1/my_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routName = 'home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: MyTheme.whiteColor,
          child: Image.asset(
            'assets/images/main.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'NewsApp',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: HomeDrawer(),
          ),
          body: CategoryWidget(),

        ),
      ],
    );
  }
}
