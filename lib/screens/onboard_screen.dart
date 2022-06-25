import 'package:flutter/material.dart';
import 'package:vital_swap/common/widgets/custom_elevated_button.dart';
import 'package:vital_swap/screens/Home/home_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/images/logo2.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 380,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      onBoardPage(
                          img: 'img1.png',
                          title:
                              'Secure Peer to Peer Currency Exchange Marketplace',
                          subtitle:
                              "Exchange your local currency at your rate. Make payment to merchants, schools and businesses."),
                      onBoardPage(
                          img: 'img2.png',
                          title: 'Swap local currencies with Just one click',
                          subtitle:
                              "With your wallet, you can swap it for another currency with just a click."),
                      onBoardPage(
                          img: 'img3.png',
                          title: 'Cash out funds into your personal account',
                          subtitle:
                              "Cash out your funds into your local bank account."),
                    ],
                    onPageChanged: (value) {
                      setCurrentPage(value);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => getIndicator(pageNo: index),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomElevatedButton(
              buttonText: 'Crrate an account',
              bgColor: const Color(0xffFFB805),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevatedButton(
              buttonText: 'Sign In',
              textColor: const Color(0xff04396D),
              bgColor: Colors.white,
              side: const BorderSide(
                color: Color(0xff04396D),
                width: 2,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer getIndicator({required int pageNo}) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 100),
      height: 5,
      width: 41,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: (currentPage == pageNo)
            ? const Color(0xff0875E0)
            : const Color(0xff8CC4FB),
      ),
    );
  }

  Column onBoardPage({
    required String img,
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/$img',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff04396D),
              letterSpacing: 1.3,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xff0875E0),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  // set current page function
  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }
}
