import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intact_app/Models/Questions.dart';
import 'package:intact_app/authentication/registration.dart';
import 'package:intact_app/commom/utills.dart';
import 'package:intact_app/data/data.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/search/poll_list.dart';
import 'package:intact_app/user/profile.dart';
import 'package:intact_app/widgets/app_dialog.dart';
import 'package:intact_app/widgets/header.dart';
import 'package:intact_app/widgets/poll_item.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Questions> questions = [];
  @override
  void initState() {
    appData.questionList().then((List<Questions> list) {
      setState(() {
        questions = list.take(5).toList();
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
                actions: _headerButtons(),
              ),
              SizedBox(height: 20),
              ...questions.map((Questions q) => PollItem(question: q)).toList(),
              Align(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  color: theme.BUTTON_COLOR,
                  child: Text("More"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PollingListPage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerButtons() {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.lock,
            size: 20,
          ),
          onPressed: () async {
            final status = await utills.checkPermission(context);
            if (status) {
              // await utills.showCustoumLoader(
              //     context, "Waiting for location...");
              // final geolocator = Geolocator();
              // final position = await geolocator.getCurrentPosition();
              // final placemark =
              //     await geolocator.placemarkFromPosition(position);
              // Navigator.of(context, rootNavigator: true).pop('dialog');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationPage(placemark: []),
                ),
              );
            }
          },
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.user,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
