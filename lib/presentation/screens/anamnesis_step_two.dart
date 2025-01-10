import 'package:flutter/material.dart';
import 'package:anamnesis/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class AnamnesisStepTwo extends StatelessWidget {
  const AnamnesisStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitle(onPress:() {
                context.pop();
              },),
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

  void confirmForm(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: const Text('Gracias por diligenciar el formulario'),
        actions: [
          TextButton(onPressed: () => context.push('/'), child: const Text('Cerrar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
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
          SizedBox(height: screenHeight >= 2000 ? 380: 360),
          CustomButton(
            isDisabled: !isButtonEnabled,
            text: 'Siguiente',
            onPress: () {
              if (isButtonEnabled) {
               confirmForm(context);
              }
            },
          )
        ],
      ),
    );
  }
}

