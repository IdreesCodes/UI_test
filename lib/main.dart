import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';
import 'package:vie_app_ui/views/bottom_nav_bar/nav_bar.dart';
import 'package:vie_app_ui/views/progress_screen/progress_screen.dart';

import 'views/home_screen/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.primary,),
        primaryColor: ColorConstants.primary,
        buttonTheme: ButtonTheme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            secondary: ColorConstants.secondary,
          ),
        ),
        useMaterial3: true,
      ),
      home:  NavBar(),
    );
  }
}


