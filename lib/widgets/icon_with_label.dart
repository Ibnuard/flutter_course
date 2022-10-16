import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key? key,
    @required this.icon,
    required this.label,
    @required this.iconColor,
    @required this.textColor,
  }) : super(key: key);

  final IconData? icon;
  final String label;
  final Color? iconColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 32,
          color: iconColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
