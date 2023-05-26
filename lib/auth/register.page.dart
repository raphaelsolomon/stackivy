import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stackivy/auth/login.page.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/resuable/widgets.resuable.dart';

import '../constant/strings.constant.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final controller = TextEditingController();
  String inputValue = '';
  bool isNotValid = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.29,
            decoration: const BoxDecoration(color: Colors.white, image: DecorationImage(image: AssetImage('assets/auth/background.png'), fit: BoxFit.cover)),
            child: SafeArea(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/splash/logo.png',
                          width: 44.67,
                          height: 49.0,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          APP_NAME,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 40.0),
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 17.0),
                      width: MediaQuery.of(context).size.width,
                      height: 35.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.white.withOpacity(.4), const Color.fromARGB(0, 225, 225, 225).withOpacity(.4)]),
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
              height: MediaQuery.of(context).size.height * 0.735,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    const Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'To Create an account enter a valid email address',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    inputWidget(
                        controller: controller,
                        callBack: (s) => setState(() {
                              if ('$s'.isEmail) isNotValid = false;
                            }),
                        isValid: isNotValid),
                    const Spacer(),
                    InkWell(
                      onTap: () => _validate(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                        decoration: BoxDecoration(
                          color: controller.text.trim().isEmpty ? const Color(0xFFE5E7EB) : const Color(0xFF8807F7),
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        child: const Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.52, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            'Already have an account? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.to(() => const LoginPage()),
                          child: const Text(
                            'Sign in',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _validate() {
    if (!controller.text.trim().isEmail || controller.text.trim().isEmpty) {
      setState(() {
        isNotValid = true;
      });
      return;
    }
    Get.to(() => const LoginPage());
  }
}
