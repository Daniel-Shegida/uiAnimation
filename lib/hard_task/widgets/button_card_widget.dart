import 'package:flutter/material.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

/// виджет нажимаемой карточки с текстом посередине
class ButtonCardWidget extends StatelessWidget {
  const ButtonCardWidget(
      {required this.buttonName,
      this.width,
      this.height,
      this.rotation,
      this.onTap,
      Key? key})
      : super(key: key);
  final String buttonName;
  final double? width;
  final double? height;
  final double? rotation;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RotatedCardWidget(
        height: height,
        width: width,
        rotation: rotation,
        child: Center(
          child:
              Text(buttonName, style: Theme.of(context).textTheme.titleSmall),
        ),
      ),
    );
  }
}
