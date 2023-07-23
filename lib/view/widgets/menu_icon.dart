import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 22,
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: 3,
          itemBuilder: (context, index) => Container(
                width: 15,
                height: 5,
                decoration: ShapeDecoration(
                  color: InductionAppColor.yellow,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.25),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )),
    );
  }
}
