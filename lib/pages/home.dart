import 'package:flutter/material.dart';
import 'package:myapp/theme/theme_data.dart';
import 'package:myapp/theme/theme_service.dart';
import 'package:myapp/widgets/custom_headline.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.light_mode_outlined,
          size: width / 16.0,
        ),
        onPressed: () {
          ThemeService().changeThemeMode();
        },
      ),
      body: Center(
          child: Container(
        child: CustomHeadline(
          text: "Hello World",
        ),
      )),
    );
  }
}
