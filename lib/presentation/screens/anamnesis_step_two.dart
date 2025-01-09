import 'package:anamnesis/presentation/shared/custom_statement.dart';
import 'package:anamnesis/presentation/shared/custom_title.dart';
import 'package:flutter/material.dart';

class AnamnesisStepTwo extends StatelessWidget {
  const AnamnesisStepTwo({super.key});

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
      ],
    );
  }
}