import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/theme_provider.dart';
import 'package:spotify_clone/utils.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              iconTheme: IconThemeData(color: Theme.of(context).colorScheme.inversePrimary),
              backgroundColor: Colors.transparent,
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "D A R K  M O D E",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  CupertinoSwitch(
                      value: sharedPreferences.sharedPreferences!.getBool("isDark")??true,
                      onChanged: (value) {
                        Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}