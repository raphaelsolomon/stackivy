import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stackivy/auth/login.page.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return logoutPop(context);
  }
}

Widget logoutPop(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: 154,
        padding: const EdgeInsetsDirectional.all(30.0),
        margin: const EdgeInsets.all(40), // to push the box half way below circle
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                const Text(
                  'Are you sure you want to LOG OUT?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () => Get.offAll(() => const LoginPage()),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
                          decoration: BoxDecoration(color: const Color(0xFFFCE4EB), borderRadius: BorderRadius.circular(8.0)),
                          child: const FittedBox(
                            child: Text(
                              'Confirm',
                              style: TextStyle(fontSize: 14.0, color: Color(0xFFE8356D), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Text(
                        'No, Cancel',
                        style: TextStyle(fontSize: 14.0, color: Colors.black, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            )),
      ),
    ],
  );
}
