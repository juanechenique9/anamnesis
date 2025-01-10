import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final VoidCallback? onPress;
  const CustomTitle({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: hasNotch ? 10 : 35),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Color(0xFFC0C5E0),
                size: 35,
              ),
              onPressed: onPress,
            ),
            Expanded(
              child: Text(
                'Bienvenido a tu nuevo comienzo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xFFC0C5E0),
                  fontFamily: 'Futura Lt BT',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
