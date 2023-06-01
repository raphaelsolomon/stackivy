import 'package:flutter/material.dart';
import 'package:stackivy/constant/colors.constant.dart';
import 'package:stackivy/constant/others.constant.dart';

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
                const Flexible(
                    flex: 2,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                const Flexible(
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Refer & Earn',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Invite using your Kode Hex.',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
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
                            Spacer(),
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
                const Flexible(
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Financial Nuggets',
                                style: TextStyle(fontSize: 20.0, color: Color(0xFF3D0072), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              child: Text(
                                'Take a step towards financial literacy with financial advice from the best minds in the game',
                                style: TextStyle(fontSize: 10.0, color: DEFAULTCOLOR, height: 2.0, fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
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
                            Spacer(),
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
              width: index == i ? 30.17 : 10.0,
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
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
        decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/card/inner1.png')), borderRadius: BorderRadius.circular(22.132), color: DEFAULTCOLOR),
        height: 200,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/card/card1.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
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
                const Row(
                  children: [
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
          ],
        ),
      ),
    );

Widget accountBalance2(BuildContext context, String currecncy) => Center(
      child: Stack(
        children: [
          Transform(
            transform: Matrix4.rotationZ(31.38),
            alignment: FractionalOffset.topLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.132), color: const Color(0xFFE8356D).withOpacity(.5)),
              height: 190,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage('assets/card/inner.png'), fit: BoxFit.fill), borderRadius: BorderRadius.circular(22.132), color: const Color(0xFFE8356D)),
            height: 200,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/card/card2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
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
              ],
            ),
          ),
        ],
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

Widget inputWidget({controller, callBack, isValid}) => Column(
      children: [
        Container(
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
                      controller: controller,
                      onChanged: (s) => callBack(s),
                      cursorColor: DEFAULTCOLOR,
                      style: const TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                      decoration: const InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.all(0.0),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                        border: OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 0.0),
                      ),
                    ),
                  ))
            ]),
          ),
        ),
        AnimatedOpacity(
          opacity: isValid ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: const Column(
            children: [
              SizedBox(height: 5.0),
              Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Color(0xFFE8356D),
                    size: 16.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'This email is not valid',
                    style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );

Widget inputPassword({controller, obscure = true, isValid, onChange, changeVisibility}) => Column(
      children: [
        Container(
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
                      controller: controller,
                      obscureText: obscure,
                      onChanged: (s) => onChange(s),
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
                onTap: () => changeVisibility(),
                child: Icon(
                  obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  size: 20.0,
                  color: const Color(0xFF9CA3AF),
                ),
              ),
            ]),
          ),
        ),
        AnimatedOpacity(
          opacity: isValid ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: const Column(
            children: [
              SizedBox(height: 5.0),
              Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Color(0xFFE8356D),
                    size: 16.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'This password must be at least 8 characters',
                    style: TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );

Widget circularNextButton(icon, {visible = true}) => Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.white, boxShadow: !visible ? [] : [BoxShadow(color: Colors.grey.shade200, offset: const Offset(0.0, 1.0), spreadRadius: 2.0, blurRadius: 5.0)]),
      child: Icon(
        icon,
        color: DEFAULTCOLOR,
        size: 20.0,
      ),
    );

Widget quickLink() => Padding(
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

Widget chartIndicator() => Container(
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
                const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
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
                          SizedBox(width: 10.0),
                          Row(
                            children: [
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
                          SizedBox(width: 10.0),
                        ],
                      ),
                    )),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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

Widget secondItem(int currentScrollIndex) => Container(
      height: 242.0,
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
