import 'package:beyondhack/ui/components/bounce.dart';
import 'package:flutter/material.dart';

extension WidgetData on Widget {
  Widget bounce({required Function onTap}) {
    return Bounce(
      child: this,
      onTap: () => onTap(),
    );
  }
}
