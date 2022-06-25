import 'package:flutter/material.dart';

class SmallElevatedButton extends StatelessWidget {
  const SmallElevatedButton({
    Key? key,
    this.textColor,
    required this.bgColor,
    required this.label,
    required this.onPress,
  }) : super(key: key);

  final Color bgColor;
  final Color? textColor;
  final String label;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        minimumSize: const Size(40, 30),
      ),
      onPressed: onPress,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
