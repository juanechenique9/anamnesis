import 'package:flutter/material.dart';

class CustomSelectButton extends StatefulWidget {
  final List<String> options;
  final ValueChanged<int> onSelectionChanged;

  const CustomSelectButton({
    super.key,
    required this.options,
    required this.onSelectionChanged,
  });

  @override
  State<CustomSelectButton> createState() => _CustomSelectButtonState();
}

class _CustomSelectButtonState extends State<CustomSelectButton> {
  int? selectedIndex;

  void _toggleSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onSelectionChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.options.asMap().entries.map((entry) {
        final index = entry.key;
        final text = entry.value;

        return Expanded(
          child: SizedBox(
            height: 44,
            child: TextButton(
              onPressed: () => _toggleSelection(index),
              style: TextButton.styleFrom(
                backgroundColor: selectedIndex == index
                    ? Color(0xFF343642)
                    : Color(0xFF141728),
                foregroundColor: Color(0xFFFFFFFF),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: BorderSide(color: selectedIndex == index ? Color(0xFF038BED) : Color(0xFF343642))
                ),
              ),
              child: Text(text),
            ),
          ),
        );
      }).toList(),
    );
  }
}
