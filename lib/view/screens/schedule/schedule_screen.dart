import 'package:btech_induction_2023/data/event.dart';
import 'package:btech_induction_2023/view/screens/schedule/tab_changer.dart';
import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:btech_induction_2023/view/widgets/headline.dart';
import 'package:btech_induction_2023/view/widgets/menu_icon.dart';
import 'package:btech_induction_2023/view/widgets/stepper.dart';
import 'package:btech_induction_2023/view/widgets/texture_background.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<Event> events = Event.items();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          const TextureBackground(),
          Align(
            alignment: Alignment.center,
            child: NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverAppBar(
                        forceElevated: innerBoxIsScrolled,
                        title: SizedBox(
                          child: Image.asset("images/iiitd.png", height: 200),
                        ),
                        centerTitle: true,
                        leading:
                            InkResponse(onTap: () {}, child: const MenuIcon()),
                        actions: const [
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      )
                    ],
                body: SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const HeadlineText(text: "schedule"),
                      const SizedBox(height: 10),
                      TabChanger(pageController: PageController()),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Wednesday, 2nd August',
                          style: TextStyle(
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
                                        width: 0.50,
                                        color: InductionAppColor.darkGrey)),
                              ),
                              child: const InfoStepper(
                                leading: Text(
                                  "09:30 AM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Netflix Sans ',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.56,
                                  ),
                                ),
                                steps: [
                                  InfoStep(title: "Registration", contents: [
                                    Text(
                                      "House band distribution (C-102)",
                                    )
                                  ]),
                                ],
                              ))),
                    ],
                  ),
                ))),
          ),
        ],
      ),
    ));
  }
}
