import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlattenButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlattenButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () => handler(),
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () => handler(),
          );
  }
}
