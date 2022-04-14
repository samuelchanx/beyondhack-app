import 'package:beyondhack/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../styles/app_styles.dart';

class AppStyledIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  const AppStyledIcon({
    Key? key,
    required this.icon,
    this.iconSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.deeperPurple,
      size: iconSize,
    )
        .padding(all: 4)
        .decorated(shape: BoxShape.circle, color: Colors.white, boxShadow: [
          const BoxShadow(
            color: Colors.black87,
          )
        ])
        .constrained(width: iconSize * 1.6, height: iconSize * 1.6)
        .padding(all: 4)
        .decorated(
          shape: BoxShape.circle,
          gradient: AppStyles.linearGradient,
        );
  }
}
