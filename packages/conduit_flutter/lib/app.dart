import 'package:flutter/material.dart';
import 'package:conduit_flutter/routes/routes.dart';

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  AppRouterDelegate _delegate = AppRouterDelegate();
  AppRouteInformationParser _parser = AppRouteInformationParser();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Conduit',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      routerDelegate: _delegate,
      routeInformationParser: _parser,
    );
  }
}

