class Event {
  final String name;
  final String description;
  final String image;
  final String date;
  final String time;
  final String venue;

  Event({
    required this.name,
    required this.description,
    required this.image,
    required this.date,
    required this.time,
    required this.venue,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['name'],
      description: json['description'],
      image: json['image'],
      date: json['date'],
      time: json['time'],
      venue: json['venue'],
    );
  }

  // dummy data
  static List<Event> items() {
    final List<Event> events = [
      Event(
          name: "Candance",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum vel lorem ut lobortis. Phasellus maximus felis ex, vel vehicula ante vulputate vel. Aenean faucibus tristique velit id luctus. Curabitur vitae consequat leo. Duis a sodales sapien, sit amet lobortis urna. Maecenas luctus lacus quis neque rutrum gravida. ",
          image: "",
          date: "",
          time: "12:30 AM",
          venue: ""),
      Event(
          name: "Odyssey",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum vel lorem ut lobortis. Phasellus maximus felis ex, vel vehicula ante vulputate vel. Aenean faucibus tristique velit id luctus. Curabitur vitae consequat leo. Duis a sodales sapien, sit amet lobortis urna. Maecenas luctus lacus quis neque rutrum gravida. ",
          image: "",
          date: "",
          time: "12:30 AM",
          venue: ""),
      Event(
          name: "Essya",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum vel lorem ut lobortis. Phasellus maximus felis ex, vel vehicula ante vulputate vel. Aenean faucibus tristique velit id luctus. Curabitur vitae consequat leo. Duis a sodales sapien, sit amet lobortis urna. Maecenas luctus lacus quis neque rutrum gravida. ",
          image: "",
          date: "",
          time: "12:30 AM",
          venue: ""),
      Event(
          name: "Something",
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum vel lorem ut lobortis. Phasellus maximus felis ex, vel vehicula ante vulputate vel. Aenean faucibus tristique velit id luctus. Curabitur vitae consequat leo. Duis a sodales sapien, sit amet lobortis urna. Maecenas luctus lacus quis neque rutrum gravida. ",
          image: "",
          date: "",
          time: "12:30 AM",
          venue: "")
    ];
    return events;
  }
}
