import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
     borderSide: BorderSide(
        color: Colors.white,
        width: 0.4,     
      ),
      borderRadius: BorderRadius.circular(0.9),
    );

    return Material(
      color: Colors.transparent,
      child: TextFormField(
        onChanged: (value) {
          print('value: $value');
        },
        validator: (value) {
          print('value: $value');
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border,
          hintText: 'Escribe aquí',
          hintStyle: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}