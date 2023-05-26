import 'package:flutter/material.dart';
import 'package:stackivy/constant/colors.constant.dart';

Widget thirdItem(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Rank',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            height: 180.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFFEF6F8)),
            child: Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 10.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Cadget',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFFE8356D), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Move up your Rank by completing transactions',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [Image.asset('assets/medal.png')],
                    )),
              ],
            )),
      ],
    );

Widget thirdItem1(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Badges',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            height: 180.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/stars.png')), borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFF9F9F9)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Beginner',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Move up your Badge by completing transactions',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Image.asset('assets/cup.png'),
                                const SizedBox(height: 7.0),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                                  child: Text(
                                    'Super Saver',
                                    style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ],
                    )),
                Stack(
                  children: [Image.asset('assets/medal2.png')],
                ),
              ],
            )),
      ],
    );

Widget thirdItem2(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Referrals',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            height: 180.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            padding: const EdgeInsets.only(left: 30.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFF0F0FF)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Refer & Earn',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Invite using your Kode Hex.',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                                  child: Text(
                                    'Click here',
                                    style: TextStyle(fontSize: 12.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(width: 7.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF8E15F8),
                                  size: 10.0,
                                )
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    )),
                Stack(
                  children: [Align(alignment: Alignment.bottomRight, child: Image.asset('assets/coins.png'))],
                ),
              ],
            )),
      ],
    );

Widget thirdItem3(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Money Wise',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
            height: 180.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            padding: const EdgeInsets.only(left: 30.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: const Color(0xFFF9F9F9)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Financial Nuggets',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Take a step towards financial literacy with financial advice from the best minds in the game',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, height: 2.0, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                                  child: Text(
                                    'Click here',
                                    style: TextStyle(fontSize: 12.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(width: 7.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFF8E15F8),
                                  size: 10.0,
                                )
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    )),
                Stack(
                  children: [Align(alignment: Alignment.bottomRight, child: Image.asset('assets/accounts.png'))],
                ),
              ],
            )),
      ],
    );

Widget indicatorWidget(length, index) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
        length,
        (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: index == i ? 30.17 : 7.0,
              height: 10.0,
              margin: const EdgeInsets.only(left: 1.0, right: 1.0),
              decoration: BoxDecoration(color: index == i ? DEFAULTCOLOR : INDICATOR, borderRadius: BorderRadius.circular(100.0)),
            )));

Widget videoDisplay(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: SizedBox(
        height: 254.0,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 224.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0), border: Border.all(width: 1.0, color: const Color(0xFFE73F76))),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: MediaQuery.of(context).size.width - 57,
              margin: const EdgeInsets.only(bottom: 00.0),
              height: 240.0,
              decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/image.png'), fit: BoxFit.cover), borderRadius: BorderRadius.circular(14.0)),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(.5),
                      radius: 30.0,
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'CEO, Mrs Oyinye',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'What is Ardila and it benefits?',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );

Widget lastItem(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Explore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 0.0,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 40.0),
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/bg.png'), fit: BoxFit.cover), borderRadius: BorderRadius.circular(10.0), color: const Color(0xFF3D0072)),
                  child: Row(children: [
                    lastItemChild('My Family and I', 'A Family that stay together stays forever'),
                    Container(
                      width: 1.0,
                      height: 50.0,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    lastItemChild('Invest With Hargon', 'Loan as an investment'),
                    Container(
                      width: 1.0,
                      height: 50.0,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    lastItemChild('Business with Ardilla', 'A Partnership where you Earn!'),
                    Container(
                      width: 1.0,
                      height: 50.0,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    lastItemChild('Tax Save', 'Where you save while spending'),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget lastItemChild(text1, text2) => Column(
      children: [
        Text(
          '$text1',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10.0),
        Text(
          '$text2',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 9.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          decoration: BoxDecoration(border: Border.all(width: .6, color: Colors.white), borderRadius: BorderRadius.circular(100.0)),
          child: const FittedBox(
            child: Text(
              'Coming Soon',
              style: TextStyle(fontSize: 6.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );

Widget accountBalance(BuildContext context) => Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 44.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.132), color: DEFAULTCOLOR),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'SAN',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 20.0),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                    decoration: BoxDecoration(color: const Color(0xFFE6356D), borderRadius: BorderRadius.circular(100.0)),
                    child: const FittedBox(
                      child: Text(
                        '+10.00%',
                        style: TextStyle(fontSize: 7.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'NGN 100,000.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.130, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset('assets/eyes.png')
              ],
            ),
            const SizedBox(height: 15.0),
            const Text(
              '**********',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.130, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: const [
                Flexible(
                  child: Text(
                    'Generate Account Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.130, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.arrow_circle_right,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );

Widget accountBalance2(BuildContext context, String currecncy) => Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.132), color: const Color(0xFFE8356D)),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dilla Wallet',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'NGN 100,000.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.130, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset('assets/eyes.png')
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: const Color(0xFF3D0072).withOpacity(.11), borderRadius: BorderRadius.circular(50.0)),
                      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: currecncy == 'NGN' ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(50.0)),
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                            child: Text(
                              'NGN',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 8.130, color: currecncy == 'NGN' ? const Color(0xFF3D0072) : Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Container(
                            decoration: BoxDecoration(color: currecncy == 'USD' ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(50.0)),
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                            child: Text(
                              'USD',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 8.130, color: currecncy == 'USD' ? const Color(0xFF3D0072) : Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      '₦740 /\$1',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 8.130, color: Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
                  child: const FittedBox(
                    child: Text(
                      'Add Money',
                      style: TextStyle(fontSize: 11.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

Widget totalFunds(BuildContext context, String currecncy) => Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.132), color: const Color(0xFFF9F9F9)),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Funds',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'NGN 100,000.00',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.130, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset('assets/eyes1.png')
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: const Color(0xFF3D0072).withOpacity(.11), borderRadius: BorderRadius.circular(50.0)),
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: currecncy == 'NGN' ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(50.0)),
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                        child: Text(
                          'NGN',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 8.130, color: currecncy == 'NGN' ? const Color(0xFF3D0072) : Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Container(
                        decoration: BoxDecoration(color: currecncy == 'USD' ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(50.0)),
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                        child: Text(
                          'USD',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 8.130, color: currecncy == 'USD' ? const Color(0xFF3D0072) : Colors.white, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                const Text(
                  '₦740 /\$1',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 8.130, color: Color(0xFFB69FC9), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
