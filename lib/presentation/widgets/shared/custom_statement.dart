import 'package:flutter/material.dart';

class CustomStatement extends StatelessWidget {
  const CustomStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Text('Completa la siguiente información',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xFFFFFFFF),
                fontFamily: 'FutuBkIt',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.32)),
        SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            text: 'Todos los campos son obligatorios',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xFFFFFFFF),
              fontFamily: 'FutuBkIt',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
