import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  

  final String? hint;
  final TextEditingController fieldController;

  const CustomTextFormField({super.key, this.hint = 'Escribe aquí', required this.fieldController});



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
        controller: fieldController,
        decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border.copyWith(borderSide: BorderSide(color: Colors.white)),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}