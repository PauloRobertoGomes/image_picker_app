import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Image Picker Application',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
        buttonColor: Colors.indigo,
        appBarTheme: AppBarTheme(centerTitle: true),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
