import 'package:flutter/material.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/welcome.dart';

class ReferencePage extends StatefulWidget {
  @override
  _ReferencePageState createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 80),
              Text(
                "Welcome to GOP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Your Opinions and Vote is Important\nto us. Explore the Great Rewarding\nScheme.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "If Your Have a Reference ID then enter it know. For each reference the referrer will get 50 Reward Points",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: theme.LINE_HEIGHT,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Enter Reference ID"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: theme.BUTTON_COLOR,
                      child: Text("Submit"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      color: theme.BUTTON_COLOR_SECOUND,
                      child: Text("Skip"),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
