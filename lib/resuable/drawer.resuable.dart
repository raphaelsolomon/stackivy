import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/src/slider.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/resuable/dailog.resuable.dart';

class CustomDrawer extends StatelessWidget {
  final GlobalKey<SliderDrawerState> sliderDrawerKey;
  const CustomDrawer(this.sliderDrawerKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      height: MediaQuery.of(context).size.height,
      color: DEFAULTCOLOR,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'),
              radius: 25.0,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Anita Ojieh',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.51219, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('user.png', 'Profile')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('port.png', 'PortFolio')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('payment.png', 'Payment')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('invest.png', 'Investment')),
                const SizedBox(width: 15.0),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    decoration: BoxDecoration(border: Border.all(width: .6, color: Colors.white), borderRadius: BorderRadius.circular(100.0)),
                    child: const FittedBox(
                      child: Text(
                        'Coming Soon',
                        style: TextStyle(fontSize: 7.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('insurance.png', 'Insurance')),
                const SizedBox(width: 15.0),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    decoration: BoxDecoration(border: Border.all(width: .6, color: Colors.white), borderRadius: BorderRadius.circular(100.0)),
                    child: const FittedBox(
                      child: Text(
                        'Coming Soon',
                        style: TextStyle(fontSize: 7.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(onTap: () => sliderDrawerKey.currentState!.closeSlider(), child: _listItem('budget.png', 'Budgeting')),
            const Spacer(),
            InkWell(
                onTap: () {
                  sliderDrawerKey.currentState!.closeSlider();
                  showDialog(context: context, barrierDismissible: true, builder: (BuildContext context) => const LogoutDialog());
                },
                child: _listItem('logout.png', 'Log Out')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }

  Widget _listItem(image, text) => Row(children: [
        Image.asset('assets/drawer/$image'),
        const SizedBox(width: 23.0),
        Text(
          '$text',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
        ),
      ]);
}
