import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(top: hasNotch ? 10 : 44), 
        child: const Text('Bienvenido a tu nuevo comienzo',
        style: TextStyle(
            decoration: TextDecoration.none,
            color: Color(0xFFC0C5E0),
            fontFamily: 'Futura Lt BT',
            fontWeight: FontWeight.w400,
            fontSize: 14)))
      ],
    );
  }
}