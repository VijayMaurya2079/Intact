import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intact_app/authentication/reference_id.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/widgets/header.dart';

class RegistrationPage extends StatefulWidget {
  final List<Placemark> placemark;
  RegistrationPage({this.placemark});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _countryController = new TextEditingController();
  String _country;
  bool _loader = false;

  @override
  initState() {
    super.initState();
    _countryController.text = widget.placemark==null?widget.placemark[0].country:"";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(
                title:
                    "You can participate in Global\nopinion Poll and help the world to\nunderstand what people think",
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter User Name",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email ID",
                  hintText: "Enter email-id",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "DOB",
                  hintText: "Select date of birth",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _countryController,
                decoration: InputDecoration(
                  labelText: "Residing Country",
                  hintText: "Select country",
                ),
                initialValue: _country,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Profession",
                  hintText: "Select profession",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  hintText: "Enter password",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter Confirm password",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "I Accept"),
                        TextSpan(text: " "),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(color: theme.BUTTON_COLOR),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: RaisedButton(
                  color: theme.BUTTON_COLOR,
                  child: Text("Register"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReferencePage(),
                      ),
                    );
                  },
                ),
              ),
              _loader
                  ? Positioned(
                      top: MediaQuery.of(context).size.height * 0.5,
                      left: MediaQuery.of(context).size.width * 0.5,
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
