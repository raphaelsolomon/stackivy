import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stackivy/auth/register.page.dart';
import 'package:stackivy/hompage/dashboard.page.dart';

import '../constant/colors.constant.dart';
import '../constant/strings.constant.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          InkWell(
            onTap: () => Get.to(() => const DashboardPage()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: SizedBox(
                height: 30.0,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Skip',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) => intialPage(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget intialPage(int index) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 32.0),
            child: Image.asset('assets/onboarding/top.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60.5, right: 60.5),
            child: Text(
              TITLE_1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36.0, color: TITLE, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60.5, right: 60.5),
            child: Text(
              DEEC_1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0, color: DESC, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 49.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: indicatorWidget(3, index),
                ),
                InkWell(
                  onTap: () => Get.to(() => const RegistrationPage()),
                  child: Container(
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0), border: Border.all(width: 1.0, color: CIRCULAR_NEXT)),
                    child: const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: DEFAULTCOLOR,
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      );

  Widget indicatorWidget(length, index) => Row(
      children: List.generate(
          length,
          (i) => Container(
                width: index == i ? 29.17 : 7.0,
                height: 7.0,
                margin: const EdgeInsets.only(left: 3.5, right: 3.5),
                decoration: BoxDecoration(color: index == i ? DEFAULTCOLOR : INDICATOR, borderRadius: BorderRadius.circular(100.0)),
              )));
}
