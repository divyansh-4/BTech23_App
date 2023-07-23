import 'package:btech_induction_2023/extensions/system.dart';
import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:flutter/material.dart';

class BackgroundHeader extends StatelessWidget {
  const BackgroundHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.15,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: InductionAppColor.darkGrey,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg_texture.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset("images/induction_logo.png"),
          ),
        ],
      ),
    );
  }
}
