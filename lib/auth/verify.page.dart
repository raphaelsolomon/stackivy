// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:stackivy/auth/login.page.dart';
import '../constant/colors.constant.dart';
import '../constant/strings.constant.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.52,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20.0,
                  color: Color(0xfF3D0072),
                ),
              ),
              const SizedBox(height: 79.0),
              Image.asset('assets/auth/verify.png'),
              const SizedBox(
                height: 69.52,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50.5, right: 50.5),
                child: Text(
                  VERIFY_TEXT,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0, color: TITLE, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  var result = await OpenMailApp.openMailApp(
                    nativePickerTitle: 'Select email app to open',
                  );
                  if (!result.didOpen && !result.canOpen) {
                    showNoMailAppsDialog(context);

                    // iOS: if multiple mail apps found, show dialog to select.
                    // There is no native intent/default app system in iOS so
                    // you have to do it yourself.
                  } else if (!result.didOpen && result.canOpen) {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return MailAppPickerDialog(
                          mailApps: result.options,
                        );
                      },
                    );
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90.0), border: Border.all(width: 1.0, color: const Color(0xFF8807F7))),
                  child: const Text(
                    'Open Email App',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.52, color: Color(0xFF8807F7), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 27.0),
              GestureDetector(
                onTap: () => Get.to(() => const LoginPage()),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                  decoration: BoxDecoration(color: const Color(0xFF8807F7), borderRadius: BorderRadius.circular(90.0), border: Border.all(width: 1.0, color: const Color(0xFF8807F7))),
                  child: const Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.52, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  void showNoMailAppsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Open Mail App",
            style: TextStyle(fontSize: 15.52, color: Colors.black, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
          ),
          content: const Text(
            "No mail apps installed",
            style: TextStyle(fontSize: 12.52, color: Colors.black, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "OK",
                style: TextStyle(fontSize: 12.52, color: Colors.black, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
