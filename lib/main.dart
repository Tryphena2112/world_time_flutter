import 'package:apps/pages/choose_location.dart';
import 'package:apps/pages/loading.dart';
import 'package:apps/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
