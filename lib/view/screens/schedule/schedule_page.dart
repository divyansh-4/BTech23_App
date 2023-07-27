import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:btech_induction_2023/view/widgets/stepper.dart';
import 'package:flutter/material.dart';
import 'package:btech_induction_2023/view/screens/schedule/day_schedule.dart';

class PageSchedule extends StatelessWidget {
  const PageSchedule({Key? key, required this.schedules, required this.date});

  final List<DayInfoStep> schedules; // Change this to List<DayInfoStep>
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              date,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Netflix Sans ',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.72,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: InductionAppColor.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      width: 0.50, color: InductionAppColor.darkGrey),
                ),
              ),
              child: InfoStepper(
                steps: _convertDayInfoToInfo(schedules),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to convert List<DayInfoStep> to List<InfoStep>
  List<InfoStep> _convertDayInfoToInfo(List<DayInfoStep> dayInfoSteps) {
    List<InfoStep> infoSteps = [];
    for (var dayInfoStep in dayInfoSteps) {
      infoSteps.add(InfoStep(
        time: dayInfoStep.time,
        title: dayInfoStep.title,
        contents: dayInfoStep.contents,
      ));
    }
    return infoSteps;
  }
}
