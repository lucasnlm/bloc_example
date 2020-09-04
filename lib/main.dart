import 'package:Counter/navigation/main_router.dart';
import 'package:flutter/material.dart';
import 'package:nuvigator/nuvigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: Nuvigator(
        router: MainRouter(),
        screenType: materialScreenType,
        initialRoute: MainRoutes.initialScreen,
      ),
    );
  }
}
