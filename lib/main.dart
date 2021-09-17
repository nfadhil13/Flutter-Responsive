import 'package:flutter/material.dart';
import 'package:movli/util/responsive_helper/max_width_container.dart';
import 'package:movli/util/responsive_helper/responsive_app.dart';
import 'package:movli/util/responsive_helper/responsive_item.dart';
import 'package:movli/util/responsive_helper/responsive_layout.dart';

import "./util/responsive_helper/responsive_size.dart";
import 'util/responsive_helper/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (ctx) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the c  ounter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home:  const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              Text(ResponsiveItem<String>(
                  mobileBody: "You are on mobile",
                  tabletBody: "Your are on table",
                  dekstopBody: "You are on dekstop"
              ).item() , style: TextStyle(fontSize: 10.sp),),
              ResponsiveLayout(
                mobileBody: () => Text(
                    ResponsiveItem<String>(
                        mobileBody: "You are on mobile",
                        tabletBody: "Your are on table",
                        dekstopBody: "You are on dekstop"
                    ).item()
                    , style: TextStyle(fontSize: 10.sp)
                )
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: ResponsiveItem<Color>(
          mobileBody: Colors.red,
            tabletBody: Colors.black,
            dekstopBody: Colors.blueAccent
        ).item(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
