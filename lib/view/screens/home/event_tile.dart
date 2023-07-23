import 'package:btech_induction_2023/data/event.dart';
import 'package:btech_induction_2023/extensions/system.dart';
import 'package:btech_induction_2023/view/theme/colors.dart';
import 'package:btech_induction_2023/view/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key, required this.event});

  final Event event;
  @override
  Widget build(BuildContext context) {
    return CascadeCard(
        child: Column(
      children: [
        Stack(
          children: [
            Container(
              width: 301,
              height: 180,
              decoration: ShapeDecoration(
                color: InductionAppColor.grey,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(66),
                      bottomRight: Radius.circular(9),
                      bottomLeft: Radius.circular(9)),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: InductionAppColor.yellow,
                  child: const Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  width: context.width * .79,
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: InductionAppColor.yellow,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 0.50, color: InductionAppColor.darkGrey),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        event.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Netflix Sans ',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.80,
                        ),
                      ),
                      Text(
                        event.time,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Netflix Sans',
                          fontWeight: FontWeight.w300,
                          letterSpacing: -0.48,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 270,
          child: Text(
            event.description,
            textAlign: TextAlign.justify,
            softWrap: true,
            overflow: TextOverflow.fade,
            maxLines: 6,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Netflix Sans',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.56,
            ),
          ),
        )
      ],
    ));
  }
}
