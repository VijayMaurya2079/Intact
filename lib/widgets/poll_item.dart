import 'package:flutter/material.dart';
import 'package:intact_app/Models/Questions.dart';
import 'package:intact_app/globals.dart';

class PollItem extends StatelessWidget {
  final Questions question;
  PollItem({this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0, left: 5.0, right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            minRadius: 25,
            backgroundColor: theme.AVATAR_BACKGROUND,
            backgroundImage: NetworkImage(
                "https://cdn2.iconfinder.com/data/icons/website-icons/512/User_Avatar-512.png"),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Container(
              height: 50.0,
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    question.question,
                    style: TextStyle(fontSize: 16),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Total Votes: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(text: question.votes.toString()),
                    ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}