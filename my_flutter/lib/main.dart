import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(new MyHomePage(
      router: window.defaultRouteName,
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(router: "hello"),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.router}) : super(key: key);
  String router;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    switch (widget.router) {
      case 'route2':
        return new Center(
          child: new Directionality(
            textDirection: TextDirection.ltr,
            child: new Text('Hello flutter module fragment'),
          ),
        );
      case 'route1':
        return new Center(
          child: new Directionality(
            textDirection: TextDirection.ltr,
            child: new Text('Hello flutter module activity!'),
          ),
        );
      default:
        return Center(
          child: Text('Unknown route: ${widget.router}',
              textDirection: TextDirection.ltr),
        );
    }
  }

}
