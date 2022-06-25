import 'package:flutter/material.dart';
import 'package:vital_swap/common/constants/colors.dart';

class BuySendIcon extends StatelessWidget {
  const BuySendIcon({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 13),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                'assets/icons/$img',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        )
      ],
    );
  }
}
