import 'package:app_prueba_final_valtx/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class ButtonsActions extends StatelessWidget {
  final Color colorBackground;
  final Color colorIcon;
  final IconData icon;
  final Responsive responsive;
  const ButtonsActions(
      {Key? key,
      required this.colorBackground,
      required this.colorIcon,
      required this.icon,
      required this.responsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 40.0, left: 10.0, right: 15.0),
      decoration: BoxDecoration(
          color: colorBackground,
          borderRadius: BorderRadius.circular(responsive.dp(10.0))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Icon(
          icon,
          size: responsive.hp(3.50),
          color: colorIcon,
        ),
      ),
    );
  }
}
