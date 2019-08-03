import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final IconData icons;
  final String message;
  final Widget actions;
  AppDialog({this.icons, this.message, this.actions});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(right: 16.0),
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                  bottomLeft: Radius.circular(75),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey.shade200,
                child: Icon(icons, size: 60),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Alert!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Flexible(
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    actions ?? SizedBox()
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
