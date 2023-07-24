import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:btech_induction_2023/view/widgets/constants.dart';
import 'package:flutter/material.dart';

class TabChanger extends StatefulWidget {
  const TabChanger({super.key, required this.pageController});

  final PageController pageController;
  @override
  State<TabChanger> createState() => _TabChangerState();
}

class _TabChangerState extends State<TabChanger> {
  List<String> days = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: MaterialButton(
            onPressed: () {},
            color: InductionAppColor.yellow,
            shape: OvalBorder(
              side: borderSide,
            ),
            child:
                const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
          ),
        ),
        const SizedBox(width: 5),
        Container(
          width: 114,
          height: 51,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: InductionAppColor.yellow,
            shape: RoundedRectangleBorder(
              side: borderSide,
              borderRadius: BorderRadius.circular(9.08),
            ),
          ),
          child: const Text(
            'DAY 1',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Netflix Sans ',
              fontWeight: FontWeight.w700,
              letterSpacing: -1.28,
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 40,
          height: 40,
          child: MaterialButton(
            onPressed: () {},
            color: InductionAppColor.yellow,
            shape: OvalBorder(
              side: borderSide,
            ),
            child: const Center(
                child: Icon(Icons.arrow_forward_ios,
                    color: Colors.black, size: 18)),
          ),
        ),
      ],
    );
  }
}
