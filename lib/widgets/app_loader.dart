import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  final String message;
  AppLoader({this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(width: 20.0),
              Text(
                message,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
