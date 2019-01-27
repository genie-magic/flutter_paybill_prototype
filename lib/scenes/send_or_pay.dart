import 'package:flutter/material.dart';
import 'package:flutter_app_upwork/globals.dart' as globals;

class SendOrPayScene extends StatefulWidget {
  static const String routeName = "/send_or_pay";

  @override
  SendOrPaySceneState createState() => new SendOrPaySceneState();
}

class SendOrPaySceneState extends State<SendOrPayScene> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Send/Pay"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () => (
                  Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName))
              ),
              icon: Icon(
                  Icons.home
              )
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Would you like to send the money to:",
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.headline,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.airline_seat_individual_suite),
                      title: Text("A person"),
                      onTap: () {
                        globals.sendMoneyTo = 'A person';
                        Navigator.of(context).pushNamed(SendOrPayScene.routeName);
                      }
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.business),
                    title: Text("A bank account"),
                    onTap: () {
                      globals.sendMoneyTo = 'A bank account';
                      Navigator.of(context).pushNamed(SendOrPayScene.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(globals.personOrBank);
  }
}