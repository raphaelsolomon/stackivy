import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 89.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _listItem('home.png', 'Home'),
          _listItem('leave.png', 'Save'),
          _listItem('compass.png', 'Explore'),
          _listItem('spine.png', 'Learn'),
          _listItem('wallet.png', 'Dilla'),
        ],
      ),
    );
  }

  Widget _listItem(image, text) => Column(children: [
        Image.asset('assets/bottom/$image'),
        const SizedBox(height: 10.0),
        Text(
          '$text',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12.0, color: Color(0xFF6B7280), fontFamily: 'Cabinet Grotesk', fontWeight: FontWeight.w500),
        ),
      ]);
}
