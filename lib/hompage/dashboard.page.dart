import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/constant/others.constant.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        slider: const CustomDrawer(),
        appBar: null,
        child: SafeArea(
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
                      Flexible(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                              radius: 30.0,
                            ),
                            const SizedBox(width: 20.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
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
                                const SizedBox(height: 8.0),
                                const Text(
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
                          _quickLink(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.035,
                          ),
                          _chartIndicator(),
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
                                    child: const Icon(
                                      Icons.arrow_back_ios,
                                      color: DEFAULTCOLOR,
                                      size: 20.0,
                                    )),
                                const SizedBox(width: 10.0),
                                InkWell(
                                    onTap: () {
                                      if (currentScrollIndex < 2) {
                                        currentScrollIndex++;
                                      }
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey.shade200, offset: const Offset(0.0, 1.0), spreadRadius: 2.0, blurRadius: 5.0)]),
                                      child: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: DEFAULTCOLOR,
                                        size: 20.0,
                                      ),
                                    ))
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
                            height: 216.0,
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
                            height: MediaQuery.of(context).size.height * 0.1,
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

  Widget _quickLink() => Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                images.length,
                (index) => SizedBox(
                      width: 60.0,
                      height: 63.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 55.0,
                              height: 63.0,
                              decoration: BoxDecoration(color: images[index]['color2'], borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ),
                          Container(
                            width: 60.0,
                            height: 59.0,
                            decoration: BoxDecoration(color: images[index]['color'], borderRadius: BorderRadius.circular(10.0)),
                            child: Center(
                              child: Image.asset('assets/${images[index]['image']}'),
                            ),
                          )
                        ],
                      ),
                    ))),
      );

  Widget _chartIndicator() => Container(
        height: 96.0,
        decoration: BoxDecoration(color: const Color(0xFFF9F9F9), borderRadius: BorderRadius.circular(8.0)),
        margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
              child: SizedBox(
                width: 80.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '80%',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Complete KYC >',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 7.0),
                    Container(
                      width: 80.0,
                      height: 3.0,
                      decoration: BoxDecoration(color: const Color(0xFFE5E7EB), borderRadius: BorderRadius.circular(8.0)),
                      child: Container(width: 40, height: 3.0, decoration: BoxDecoration(color: DEFAULTCOLOR, borderRadius: BorderRadius.circular(8.0))),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 2.0,
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              color: const Color(0xFfE5E7EB),
            ),
            Flexible(
              flex: 3,
              child: Stack(
                children: [
                  Align(alignment: Alignment.center, child: Image.asset('assets/chart.png')),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  color: Color(0xFFE8356D),
                                  size: 15.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Inflow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10.0),
                            Row(
                              children: const [
                                Icon(
                                  Icons.circle,
                                  color: DEFAULTCOLOR,
                                  size: 15.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Outflow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10.0),
                          ],
                        ),
                      )),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFF22C55E),
                            size: 15.0,
                          ),
                          Text(
                            ' 10.00%',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10.0, color: Color(0xFF22C55E), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'Cashflow',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );

  Widget secondItem(int index) => Container(
        height: 239.0,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(colors: [image2[currentScrollIndex]['color'].withOpacity(.17), image2[currentScrollIndex]['color2'].withOpacity(.0)], begin: Alignment.topCenter, end: Alignment.bottomCenter, stops: const [0.0, 0.4])),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            Image.asset('assets/${image2[currentScrollIndex]['image']}'),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 77.0),
              child: Text(
                image2[currentScrollIndex]['text1'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 77.0),
              child: Text(
                image2[currentScrollIndex]['text2'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15.0, color: Color(0xFF9CA3AF), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 77.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    image2[currentScrollIndex]['text3'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10.0),
                  const Icon(
                    Icons.arrow_forward,
                    color: DEFAULTCOLOR,
                    size: 10.0,
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
