import 'package:flutter/material.dart';
import 'package:flutter_app_upwork/globals.dart' as globals;
import 'package:flutter_app_upwork/scenes/send_or_pay.dart';

class PersonOrBankScene extends StatefulWidget {
  static const String routeName = "/person_or_bank";

  @override
  PersonOrBankSceneState createState() => new PersonOrBankSceneState();
}

class PersonOrBankSceneState extends State<PersonOrBankScene> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Person or Bank Account"),
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
                "What's the account type?",
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.headline,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.airline_seat_individual_suite),
                      title: Text("Individual Account"),
                      onTap: () {
                        globals.personOrBank = 'Individual account';
                        Navigator.of(context).pushNamed(SendOrPayScene.routeName);
                      }
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.business),
                    title: Text("Legal Entity Account"),
                    onTap: () {
                      globals.personOrBank = 'Legal entity account';
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
}