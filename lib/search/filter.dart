import 'package:flutter/material.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/widgets/header.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class Questions {
  String question;
  int votes;
  Questions(this.question, this.votes);
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Header(
                title: "The Latest Trending\nOpinion Polls",
                actions: null,
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Selec Level",
                        hintText: "Select Level",
                      ),
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Select Industry",
                        hintText: "Select Industry",
                      ),
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Select Year",
                        hintText: "Select Year",
                      ),
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Select Country",
                        hintText: "Select Country",
                      ),
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Select City",
                        hintText: "Select City",
                      ),
                      initialValue: "",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 100,
                      child: RaisedButton(
                        color: theme.BUTTON_COLOR,
                        child: Row(
                          children: <Widget>[Icon(Icons.search), Text("Search")],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
