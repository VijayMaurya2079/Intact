import 'package:flutter/material.dart';
import 'package:intact_app/Models/Questions.dart';
import 'package:intact_app/data/data.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/widgets/header.dart';
import 'package:intact_app/widgets/poll_item.dart';

class PollingListPage extends StatefulWidget {
  @override
  _PollingListPageState createState() => new _PollingListPageState();
}

class _PollingListPageState extends State<PollingListPage> {
  List<Questions> questions = [];
  @override
  void initState() {
    appData.questionList().then((List<Questions> list) {
      setState(() {
        questions = list;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(
                title: "The Latest Trending\nOpinion Polls",
                actions: null,
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Short By",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    FlatButton(
                      child: Text("Popularity"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("Freshness"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("Alphabetical"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ...questions.map((Questions q) => PollItem(question: q)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
