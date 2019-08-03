import 'package:flutter/material.dart';
import 'package:intact_app/globals.dart';

class EditKeyPair extends StatefulWidget {
  final String pairKey;
  final String pairValue;
  EditKeyPair({this.pairKey, this.pairValue});

  @override
  _EditKeyPairState createState() => new _EditKeyPairState();
}

class _EditKeyPairState extends State<EditKeyPair> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 280,
        child: Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Update ${widget.pairKey}",
                  style: TextStyle(
                    color: theme.LABEL_COLOR,
                    fontSize: 25,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(widget.pairKey),
                  subtitle: TextFormField(initialValue: widget.pairValue),
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
