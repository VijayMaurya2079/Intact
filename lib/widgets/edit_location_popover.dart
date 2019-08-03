import 'package:flutter/material.dart';
import 'package:intact_app/globals.dart';

class EditLocationPopover extends StatefulWidget {
  @override
  _EditLocationPopoverState createState() => new _EditLocationPopoverState();
}

class _EditLocationPopoverState extends State<EditLocationPopover> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        child: Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Update Location",
                  style: TextStyle(
                    color: theme.LABEL_COLOR,
                    fontSize: 25,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text("Country"),
                  subtitle: TextFormField(initialValue: ""),
                ),
                ListTile(
                  title: Text("State"),
                  subtitle: TextFormField(initialValue: ""),
                ),
                ListTile(
                  title: Text("City"),
                  subtitle: TextFormField(initialValue: ""),
                ),
                ListTile(
                  title: Text("Pincode"),
                  subtitle: TextFormField(initialValue: ""),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  color: theme.BUTTON_COLOR,
                  child: Text("Update"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
