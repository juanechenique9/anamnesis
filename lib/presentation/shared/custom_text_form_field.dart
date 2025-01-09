import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFFFFFF))
    );

    return Material(
      color: Colors.transparent, // No afecta el fondo
      child: TextFormField(
        onChanged: (value) {
          print('value: $value');
        },
        validator: (value) {
          print('value: $value');
          return null; // Agrega validación si es necesario
        },
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}