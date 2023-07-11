import 'package:flutter/material.dart';
import 'package:news1/my_theme.dart';
import 'package:news1/settings/settings_tab.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 64),
          color: MyTheme.primaryLightColor,
          child: Text('News App!',

            style: TextStyle(
              color: MyTheme.whiteColor,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(Icons.list,size: 35,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Categories',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              //Navigator.pushNamed(context, SettingsTab.routName);
            },
            child: Row(
              children: [
                Icon(Icons.settings,size: 35),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Settings',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
