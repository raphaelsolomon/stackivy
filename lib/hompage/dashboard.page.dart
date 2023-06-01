import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/resuable/bottom.resuable.dart';
import 'package:stackivy/resuable/drawer.resuable.dart';
import 'package:stackivy/resuable/widgets.resuable.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  int currentScrollIndex = 0;
  int currentPageView2Index = 0;
  final GlobalKey<SliderDrawerState> _sliderDrawerKey = GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        key: _sliderDrawerKey,
        sliderBoxShadow: SliderBoxShadow(color: Colors.black45),
        slider: CustomDrawer(_sliderDrawerKey),
        appBar: null,
        child: GestureDetector(
          onTap: () => _sliderDrawerKey.currentState!.closeSlider(),
          child: SafeArea(
              maintainBottomViewPadding: false,
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            const Flexible(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage('assets/user.png'),
                                    radius: 30.0,
                                  ),
                                  SizedBox(width: 20.0),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Good Morning',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(width: 10.0),
                                          Icon(
                                            Icons.sunny,
                                            color: Color(0xFFFBBF24),
                                            size: 15.0,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        'Cadet <Annie/>',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 18.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/notification.png',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0, right: 27.0),
                                  child: SizedBox(
                                    height: 246,
                                    child: PageView.builder(
                                      itemCount: [accountBalance(context), accountBalance2(context, 'USD'), totalFunds(context, 'NGN')].length,
                                      onPageChanged: (value) => setState(() => currentIndex = value),
                                      itemBuilder: (ctx, i) => [accountBalance(context), accountBalance2(context, 'USD'), totalFunds(context, 'NGN')][i],
                                    ),
                                  ),
                                ),
                                _indicator(currentIndex),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.035,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30.0, right: 27.0),
                                  child: Text(
                                    'Quick Links',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.035,
                                ),
                                quickLink(),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.035,
                                ),
                                chartIndicator(),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            if (currentScrollIndex > 0) {
                                              setState(() {
                                                currentScrollIndex--;
                                              });
                                            }
                                          },
                                          child: circularNextButton(Icons.arrow_back_ios, visible: false)),
                                      const SizedBox(width: 10.0),
                                      InkWell(
                                          onTap: () {
                                            if (currentScrollIndex < 2) {
                                              currentScrollIndex++;
                                            }
                                            setState(() {});
                                          },
                                          child: circularNextButton(Icons.arrow_forward_ios))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.02,
                                ),
                                secondItem(currentScrollIndex),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.035,
                                ),
                                SizedBox(
                                  height: 220.0,
                                  child: PageView.builder(
                                    onPageChanged: (value) => setState(() => currentPageView2Index = value),
                                    itemCount: [thirdItem(context), thirdItem1(context), thirdItem2(context), thirdItem3(context)].length,
                                    itemBuilder: (ctx, i) => [thirdItem(context), thirdItem1(context), thirdItem2(context), thirdItem3(context)][i],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.023,
                                ),
                                indicatorWidget(4, currentPageView2Index),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.08,
                                ),
                                videoDisplay(context),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.06,
                                ),
                                lastItem(context),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.15,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  const Align(alignment: Alignment.bottomCenter, child: CustomBottomNav())
                ],
              )),
        ),
      ),
    );
  }

  Widget _indicator(index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 102.0),
        child: Row(
            children: List.generate(
                3,
                (i) => Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        width: double.infinity,
                        height: 2.0,
                        decoration: BoxDecoration(color: index == i ? const Color(0xFF8807F7) : const Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ))),
      );
}
