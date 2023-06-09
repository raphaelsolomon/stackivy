import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stackivy/auth/register.page.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/hompage/dashboard.page.dart';
import 'package:stackivy/resuable/widgets.resuable.dart';

import '../constant/strings.constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = TextEditingController();
  final _pcontroller = TextEditingController();
  bool isNotValid = false;
  bool isPasswordNotValid = false;
  bool obscure = true;

  @override
  void dispose() {
    _controller.dispose();
    _pcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              height: MediaQuery.of(context).size.height * 0.77,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const Text(
                      'Welcome !',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Here’s how to Log in to access your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    inputWidget(
                        controller: _controller,
                        callBack: (s) => setState(() {
                              if ('$s'.isEmail) isNotValid = false;
                            }),
                        isValid: isNotValid),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    inputPassword(
                        controller: _pcontroller,
                        obscure: obscure,
                        changeVisibility: () => setState(() => obscure = !obscure),
                        isValid: isPasswordNotValid,
                        onChange: (s) => setState(() {
                              if (s.length > 7) {
                                isPasswordNotValid = false;
                              } else {
                                isPasswordNotValid = true;
                              }
                            })),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () => Get.to(() => null),
                          child: const Text(
                            'Forgot Password?',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => validate(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                        decoration: BoxDecoration(
                          color: _controller.text.trim().isEmpty || _pcontroller.text.trim().isEmpty ? const Color(0xFFE5E7EB) : const Color(0xFF8807F7),
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        child: const Text(
                          'Log In',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.52, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 96.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1.0,
                              color: const Color(0xFFF3F4F6),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15.52, color: Color(0xFFD1D5DB), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 1.0,
                              color: const Color(0xFFF3F4F6),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xFF8807F7),
                        ),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            color: DEFAULTCOLOR,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Sign in with SAN ID',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15.52, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                          ),
                        ],
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
                            'New User? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.to(() => const RegistrationPage()),
                          child: const Text(
                            'Create Account',
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

  validate() {
    if (!_controller.text.trim().isEmail || _controller.text.trim().isEmpty) {
      setState(() {
        isNotValid = true;
      });
      return;
    }

    if (_pcontroller.text.length < 8 || _pcontroller.text.trim().isEmpty) {
      setState(() {
        isPasswordNotValid = true;
      });
      return;
    }
    Get.to(() => const DashboardPage());
  }
}
