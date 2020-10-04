import 'package:flutter/material.dart';
import 'package:tour_mesh/locator.dart';
import 'package:tour_mesh/ui/router.dart' as Router;
import 'package:tour_mesh/ui/views/login_view.dart';

import 'core/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: Router.Router.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginView()));
        },
      ),
    );
  }
}
