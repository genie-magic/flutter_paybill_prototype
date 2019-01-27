import 'package:flutter/material.dart';

// Import scenes
import 'package:flutter_app_upwork/scenes/person_or_bank.dart';
import 'package:flutter_app_upwork/scenes/send_or_pay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          primarySwatch: Colors.blue,
          primaryTextTheme: TextTheme(
            headline: TextStyle(
                color: Colors.black
            ),
            subhead: TextStyle(
              color: Colors.black
            ),
          )
      ),
      home: PersonOrBankScene(),
      routes: <String, WidgetBuilder>{
        SendOrPayScene.routeName: (BuildContext context) => SendOrPayScene()
      },
    );
  }
}