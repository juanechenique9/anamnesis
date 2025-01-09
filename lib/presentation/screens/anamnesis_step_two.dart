import 'package:flutter/material.dart';
import 'package:anamnesis/presentation/shared/custom_statement.dart';
import 'package:anamnesis/presentation/shared/custom_title.dart';
import 'package:anamnesis/presentation/shared/custom_button.dart';

class AnamnesisStepTwo extends StatelessWidget {
  const AnamnesisStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(),
              SizedBox(height: 40),
              CustomStatement(),
              SizedBox(height: 16),
              _FillForm(),
            ],
          ),
        ],
      ),
    );
  }
}

class _FillForm extends StatelessWidget {
  const _FillForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: '¿Tiene dolores frecuente y no ha consultado el médico?',
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
          SizedBox(height: 12),
       
          SizedBox(height: 12),
          RichText(
            text: TextSpan(
              text:
                  '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?*?',
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
          SizedBox(height: 12),
       
          SizedBox(height: 12),
          CustomButton(
            text: 'Siguiente',
            onPress: () {
            },
          )
        ],
      ),
    );
  }
}
