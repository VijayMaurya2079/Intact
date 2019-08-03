import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intact_app/widgets/app_dialog.dart';
import 'package:intact_app/widgets/app_loader.dart';
import 'package:location_permissions/location_permissions.dart';

class Utills {
  Future checkPermission(BuildContext context) async {
    bool flag = true;
    final permissionStatus =
        await LocationPermissions().checkPermissionStatus();
    if (permissionStatus == PermissionStatus.granted) {
      final serviceStatus = await LocationPermissions().checkServiceStatus();
      if (serviceStatus != ServiceStatus.enabled) {
        flag = false;
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await _serviceAlert(context);
        });
      }
    } else {
      flag = false;
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await _permissionAlert(context);
      });
    }
    return flag;
  }

  _serviceAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AppDialog(
          icons: FontAwesomeIcons.searchLocation,
          message: "Turn on GPS.",
          actions: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text(
                  "Open Location",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  await LocationPermissions().checkServiceStatus(
                    level: LocationPermissionLevel.location,
                  );
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  //getuserLocation(context);
                },
              )
            ],
          ),
        );
      },
    );
  }

  _permissionAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AppDialog(
          icons: FontAwesomeIcons.searchLocation,
          message: "Location permission required.",
          actions: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text(
                  "Open Location",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  await LocationPermissions().openAppSettings();
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  //getuserLocation(context);
                },
              )
            ],
          ),
        );
      },
    );
  }

  showCustoumLoader(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AppLoader(message: message);
      },
    );
  }
}

final utills = Utills();
