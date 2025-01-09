import 'package:anamnesis/presentation/shared/custom_statement.dart';
import 'package:anamnesis/presentation/shared/custom_text_form_field.dart';
import 'package:anamnesis/presentation/shared/custom_title.dart';
import 'package:flutter/material.dart';

class AnamnesisStepOne extends StatelessWidget {
  const AnamnesisStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitle(),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 54, 16, 0),
              child: CustomStatement(),
            ),
          ],
        ),
        _FillForm()
      ],
    );
  }
}

class _FillForm extends StatelessWidget {
  const _FillForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(children: [
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
        SizedBox(height: 8,),
        CustomTextFormField(),
        SizedBox(height: 14,),
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
        SizedBox(height: 8,),
        CustomTextFormField()
      ]),
    ));
  }
}
