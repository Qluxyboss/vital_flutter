import 'package:flutter/material.dart';
import 'package:vital_swap/screens/Home/widgets/small_elevated_button.dart';

class CompleteStack extends StatelessWidget {
  const CompleteStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 116,
          width: 343,
          decoration: BoxDecoration(
            color: const Color(0xff04396D),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 18,
          left: 115,
          child: Column(
            children: [
              const Text(
                'Wallet Balance (Dollar)',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    '\$10.00',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('assets/icons/eyes.png'),
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          top: 45,
          left: 14,
          child: Image(
            image: AssetImage('assets/icons/barrow.png'),
          ),
        ),
        const Positioned(
          top: 45,
          right: 26,
          child: Image(
            image: AssetImage('assets/icons/farrow.png'),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 60,
          child: Row(
            children: [
              SmallElevatedButton(
                bgColor: const Color(0xffFFB805),
                label: 'Fund Wallet',
                onPress: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              SmallElevatedButton(
                onPress: () {},
                label: 'Manage Wallet',
                textColor: const Color(0xff04396D),
                bgColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
