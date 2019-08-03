import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntactThemeVariables {
  final Color UNDER_LINE_COLOR = Colors.green.shade200;
  final Color GRADIENT_COLOR1 = Colors.black;
  final Color GRADIENT_COLOR2 = Colors.black12;
  final Color AVATAR_BACKGROUND = Colors.blue.shade200;
  final Color BUTTON_COLOR = Colors.green.shade200;
  final Color BUTTON_COLOR_SECOUND = Colors.blue.shade200;
  final Color LABEL_COLOR = Colors.lightBlueAccent;
  final double LINE_HEIGHT = 1.2;
  final double LETTER_SPACING = 0.8;

  BoxDecoration gradiantBox() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomLeft,
        colors: [Colors.black87, Colors.black54, Colors.black54],
      ),
    );
  }

  SizedBox linearProgressIndicator() {
    return SizedBox(
      height: 3.0,
      child: LinearProgressIndicator(
        backgroundColor: UNDER_LINE_COLOR,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.green.shade600),
      ),
    );
  }
}

final theme = IntactThemeVariables();
