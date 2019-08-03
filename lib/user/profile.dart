import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intact_app/globals.dart';
import 'package:intact_app/widgets/edit_location_popover.dart';
import 'package:intact_app/widgets/edit_popove.dart';
import 'package:intact_app/widgets/header.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
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
                title:
                    "You Can update your complete Profile now or you can update it anytime from My Profile option of Menu",
                actions: null,
              ),
              SizedBox(height: 10.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.network(
                        "https://cdn2.iconfinder.com/data/icons/website-icons/512/User_Avatar-512.png",
                        fit: BoxFit.cover,
                        width: 90,
                      ),
                      radius: 60,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.camera),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Name",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        _editData("Name", "Pratyush Maurya");
                      },
                    )
                  ],
                ),
                subtitle: Text("Pratyush Maurya"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Email ID",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        _editData("Name", "Pratyush Maurya");
                      },
                    )
                  ],
                ),
                subtitle: Text("**********@gmail.com"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Mobile number",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        _editData("Name", "Pratyush Maurya");
                      },
                    )
                  ],
                ),
                subtitle: Text("**********"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "My DOB",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        _editData("Name", "Pratyush Maurya");
                      },
                    )
                  ],
                ),
                subtitle: Text("05th of Nov in 2018"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "My Profession",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        _editData("Name", "Pratyush Maurya");
                      },
                    )
                  ],
                ),
                subtitle: Text("Algoritham Designer"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "My Residing Place",
                      style: TextStyle(
                        color: Colors.amber[600],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        size: 15,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return EditLocationPopover();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Country",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("India"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "State",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("Utter Pradesh"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "City",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("Lucknow"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Pin Code",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("226002"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Member Ship Type",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("Regular"),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Text(
                      "Membership Level",
                      style: TextStyle(
                        color: theme.LABEL_COLOR,
                      ),
                    ),
                  ],
                ),
                subtitle: Text("Beginner"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _editData(String key, String value) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return EditKeyPair(pairKey: key, pairValue: value);
      },
    );
  }
}
