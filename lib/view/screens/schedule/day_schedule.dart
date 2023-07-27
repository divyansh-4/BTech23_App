import 'package:flutter/material.dart';

class DayInfoStep {
  // Rename to DayInfoStep
  final String time;
  final String title;
  final List<Widget> contents;

  DayInfoStep({
    required this.time,
    required this.title,
    required this.contents,
  });
}

List<DayInfoStep> dayOneSchedule = [
  DayInfoStep(time: "09:30 AM", title: "Registration", contents: [
    const Text("House band distribution (C-102)"),
  ]),
  DayInfoStep(time: "10:00 AM", title: 'Welcome Note', contents: [
    const Text(
        "Cultural performance,\nwelcome note by Director,\nDoAA, DoSA, DIRD, DoCA, Registrar\n(C-102)"),
  ]),
  DayInfoStep(
      time: '11:00 AM',
      title: "Introduction to\nStudent Affairs Office",
      contents: const [
        Text('C-102'),
      ]),
  DayInfoStep(
      time: '11:30 AM',
      title: "Introduction to Clubs,\nCouncils, NSS and\nHouse System",
      contents: [const Text('C-102')]),
  DayInfoStep(
      time: '12:30 AM', title: "Fun Activity", contents: [const Text('C-102')]),
  DayInfoStep(
      time: '02:00 PM',
      title: "Welcome Kit\nDistribution",
      contents: [const Text('C-102')]),
  DayInfoStep(time: '02:30 PM', title: "KeyNote 1", contents: [
    const Text(
        'by Founding Director,\nPankaj Jalote:\n"Getting most from your\nfour years in the institute".\n(C-102)')
  ]),
  DayInfoStep(
      time: '04:00 PM',
      title: "Introduction to\nLibrary, FMS, IT,\nFinance, &DIRD",
      contents: [const Text('C-102')]),
];

List<DayInfoStep> dayTwoSchedule = [
  DayInfoStep(time: "09:30 AM", title: "Event 1", contents: [
    const Text("Description of Event 1"),
  ]),
  DayInfoStep(time: "11:00 AM", title: 'Event 2', contents: [
    const Text("Description of Event 2"),
  ]),
];

List<DayInfoStep> dayThreeSchedule = [
  DayInfoStep(time: "10:30 AM", title: "Event 3", contents: [
    const Text("Description of Event 3"),
  ]),
  DayInfoStep(time: "02:00 PM", title: 'Event 4', contents: [
    const Text("Description of Event 4"),
  ]),
];

List<DayInfoStep> dayFourSchedule = [
  DayInfoStep(time: "10:30 AM", title: "Event 3", contents: [
    const Text("Description of Event 3"),
  ]),
  DayInfoStep(time: "02:00 PM", title: 'Event 4', contents: [
    const Text("Description of Event 4"),
  ]),
];

List<DayInfoStep> dayFiveSchedule = [
  DayInfoStep(time: "10:30 AM", title: "Event 3", contents: [
    const Text("Description of Event 3"),
  ]),
  DayInfoStep(time: "02:00 PM", title: 'Event 4', contents: [
    const Text("Description of Event 4"),
  ]),
];
// Add other day schedules as needed
