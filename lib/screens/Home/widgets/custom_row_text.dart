import 'package:flutter/material.dart';
import 'package:vital_swap/common/constants/colors.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({
    Key? key,
    required this.activeText,
    required this.inActiveText,
  }) : super(key: key);

  final String activeText;
  final String inActiveText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          activeText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        Text(
          inActiveText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: inActiveTextColor,
          ),
        ),
      ],
    );
  }
}
