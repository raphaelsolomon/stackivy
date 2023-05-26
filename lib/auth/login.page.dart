import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stackivy/auth/register.page.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/hompage/dashboard.page.dart';

import '../constant/strings.constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = TextEditingController();
  final _pcontroller = TextEditingController();
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
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    inputFormEmail(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    inputFormPass(),
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
                      onTap: () => Get.to(() => const DashboardPage()),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF8807F7),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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

  Widget inputFormEmail() => Container(
        height: 50.0,
        decoration: BoxDecoration(border: Border.all(width: 1.0, color: const Color(0xFF9CA3AF)), color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.mail_outline,
              size: 20.0,
              color: Color(0xFF9CA3AF),
            ),
            const SizedBox(width: 10.0),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: TextFormField(
                    controller: _controller,
                    onChanged: (s) => setState(() {}),
                    cursorColor: DEFAULTCOLOR,
                    style: const TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      hintText: 'Email Address or kode Hex',
                      hintStyle: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.all(0.0),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                      border: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                    ),
                  ),
                ))
          ]),
        ),
      );

  Widget inputFormPass() => Container(
        height: 50.0,
        decoration: BoxDecoration(border: Border.all(width: 1.0, color: const Color(0xFF9CA3AF)), color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.lock_outline,
              size: 20.0,
              color: Color(0xFF9CA3AF),
            ),
            const SizedBox(width: 10.0),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: TextFormField(
                    controller: _pcontroller,
                    obscureText: obscure,
                    onChanged: (s) => setState(() {}),
                    cursorColor: DEFAULTCOLOR,
                    style: const TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.all(0.0),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                      border: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                    ),
                  ),
                )),
            const SizedBox(width: 10.0),
            InkWell(
              onTap: () => setState(() {
                obscure = !obscure;
              }),
              child: Icon(
                obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                size: 20.0,
                color: const Color(0xFF9CA3AF),
              ),
            ),
          ]),
        ),
      );
}
