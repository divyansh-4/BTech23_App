import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: InductionAppColor.yellow,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: InductionAppColor.darkGrey),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 48,
            color: InductionAppColor.darkGrey,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
