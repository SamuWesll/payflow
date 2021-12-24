import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPress;
  final bool enablePrimaryColor;
  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secundaryLabel,
      required this.secundaryOnPress,
      this.enablePrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            onPressed: primaryOnPressed,
            label: primaryLabel,
            style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
          )),
          const DividerVerticalWidget(),
          Expanded(
              child: LabelButton(
            onPressed: secundaryOnPress,
            label: secundaryLabel,
          )),
        ],
      ),
    );
  }
}
