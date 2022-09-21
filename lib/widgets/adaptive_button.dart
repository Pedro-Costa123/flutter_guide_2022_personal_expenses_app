import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: handler)
        : TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Theme
              .of(context)
              .primaryColor) //or MaterialStatePropertyAll(Colors.purple)
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: handler,
    );
  }
}
