import 'package:anamnesis/presentation/shared/custom_select_button.dart';
import 'package:flutter/material.dart';
import 'package:anamnesis/presentation/shared/custom_statement.dart';
import 'package:anamnesis/presentation/shared/custom_title.dart';
import 'package:anamnesis/presentation/shared/custom_button.dart';

class AnamnesisStepTwo extends StatelessWidget {
  const AnamnesisStepTwo({super.key});

  @override
  Widget build(BuildContext context) {


    return Container(
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
class _FillForm extends StatefulWidget {
  const _FillForm();

  @override
  State<_FillForm> createState() => _FillFormState();
}

class _FillFormState extends State<_FillForm> {
  final _formKey = GlobalKey<FormState>();
  int? _groupOneSelection;
  int? _groupTwoSelection;

  bool get isButtonEnabled =>
      _groupOneSelection != null && _groupTwoSelection != null;

  void _updateSelection(int group, int selectedIndex) {
    setState(() {
      if (group == 1) {
        _groupOneSelection = selectedIndex;
      } else if (group == 2) {
        _groupTwoSelection = selectedIndex;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: '¿Tiene dolores frecuentes y no ha consultado al médico?',
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
          CustomSelectButton(
            options: ['Sí', 'No'],
            onSelectionChanged: (index) => _updateSelection(1, index),
          ),
          SizedBox(height: 12),
          RichText(
            text: TextSpan(
              text:
                  '¿Le ha dicho al médico que tiene algún problema en los huesos o en las articulaciones, que pueda desfavorecer con el ejercicio?',
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
          CustomSelectButton(
            options: ['Sí', 'No'],
            onSelectionChanged: (index) => _updateSelection(2, index),
          ),
          SizedBox(height: 380),
          CustomButton(
            isDisabled: !isButtonEnabled,
            text: 'Siguiente',
            onPress: () {
              if (isButtonEnabled) {
                
              }
            },
          )
        ],
      ),
    );
  }
}