import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback? onPress;
  final Map<WidgetState, Color> statusTextColor;
  final bool isDisabled;
  final String? text;
  final Map<WidgetState, Color> statusBackgroundColor;

  const CustomButton({
    super.key,
    this.onPress,
    this.statusTextColor = const {
      WidgetState.disabled: Color(0xFF161621),
    },
    this.statusBackgroundColor = const {
      WidgetState.disabled: Color(0xFF585853)
    },
    this.text,
    this.isDisabled = false,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late WidgetStatesController stateController;

  @override
  void initState() {
    super.initState();
    stateController = WidgetStatesController();
  }

  @override
  void dispose() {
    stateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: widget.key,
      statesController: stateController,
      style: getButtonStyle(context),
      onPressed:
          !widget.isDisabled && widget.onPress != null ? widget.onPress : null,
      child: Container(
        height: 50,
        padding: EdgeInsetsDirectional.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              widget.text ?? '',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xFF161621),
                fontFamily: 'FutuBkIt',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle getButtonStyle(BuildContext context) => ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size.zero),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          return Colors.transparent;
        }),
        shape: WidgetStateProperty.resolveWith(
          (state) {
            final border = RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.8),
            );

            if (state.isNotEmpty) {
              final bool isFocused = state.contains(WidgetState.focused);

              return border.copyWith(
                  side: BorderSide(
                color: isFocused ? Colors.blue : Colors.transparent,
                strokeAlign: isFocused ? 4 : 0,
                width: isFocused ? 2 : 0,
              ));
            }
            return border;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.isNotEmpty &&
                widget.statusTextColor.containsKey(states.last)) {
              return widget.statusTextColor[states.last]!;
            }
            return Color(0xFF161621);
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.isNotEmpty && states.contains(WidgetState.pressed)) {
              return widget.statusBackgroundColor
                      .containsKey(WidgetState.hovered)
                  ? widget.statusBackgroundColor[WidgetState.hovered]!
                  : Colors.transparent;
            } else if (states.isNotEmpty &&
                widget.statusBackgroundColor.containsKey(states.last)) {
              return widget.statusBackgroundColor[states.last]!;
            }
            return Color(0xFFEDC603);
          },
        ),
      );
}
