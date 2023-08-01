import 'package:btech_induction_2023/data/step_info.dart';

class Schedule {
  final String date;

  Schedule({required this.date});

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(date: json['date']);
  }
}
