import 'package:flutter/material.dart';
import 'package:anamnesis/presentation/shared/custom_statement.dart';
import 'package:anamnesis/presentation/shared/custom_text_form_field.dart';
import 'package:anamnesis/presentation/shared/custom_title.dart';
import 'package:anamnesis/presentation/shared/custom_button.dart';
import 'package:go_router/go_router.dart';

class AnamnesisStepOne extends StatelessWidget {
  const AnamnesisStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(),
          SizedBox(height: 40),
          CustomStatement(),
          SizedBox(height: 16),
          _FillForm(),
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
  bool isButtonEnabled = false;

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
      onChanged: _updateButtonState,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Field(),
          SizedBox(
            height: 380,
          ),
          CustomButton(
            isDisabled: !isButtonEnabled,
            text: 'Siguiente',
            onPress: () {
              context.push('/anamnesistwo');
            },
          ),
        ],
      ),
    );
  }
}

class _Field extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: '¿Ha tenido operaciones? ¿Cuáles y hace cuánto tiempo?',
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
        CustomTextFormField(),
        SizedBox(height: 12),
        RichText(
          text: TextSpan(
            text:
                '¿Tiene o tuvo alguna enfermedad diagnosticada o tratada por un médico?',
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
        CustomTextFormField(),
      ],
    );
  }
}
