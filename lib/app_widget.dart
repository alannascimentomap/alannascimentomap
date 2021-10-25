// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart'
    show BuildContext, Key, StatelessWidget, Widget;
import 'package:flutter/material.dart';
import 'package:teste/desafio.dart';
import 'package:teste/empresas.dart';
import 'package:teste/home_page.dart';
import 'package:teste/login.dart';
import 'package:teste/login_map.dart';
import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: AppController.instancia.isdarktheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/home',
          routes: {
            '/login': (context) => telalogin(),
            '/empresas': (context) => empresasCad(),
            '/': (context) => login(),
            '/home': (context) => HomePage(),
            '/desafio': (context) => desafiotinder(),
          },
        );
      },
      animation: AppController.instancia,
    );
  }
}
