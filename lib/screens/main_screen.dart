import 'package:flutter/material.dart';
import 'package:nuvigator/nuvigator.dart';

import '../navigation/main_router.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo Bloc e Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: const Text('BLoC'),
              onPressed: () => {
                Nuvigator.of(context).pushNamed(MainRoutes.blocCounterScreen),
              },
            ),
            RaisedButton(
              child: const Text('Cubit'),
              onPressed: () => {
                Nuvigator.of(context).pushNamed(MainRoutes.cubitCounterScreen),
              },
            ),
          ],
        ),
      ),
    );
  }
}
