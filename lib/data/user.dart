class UserProfile {
  final String username;
  final String fullName;
  final String? pronouns;
  final String? profileImage;

  UserProfile({
    required this.fullName,
    this.profileImage,
    this.pronouns,
    required this.username,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      fullName: json["fullName"],
      username: json["username"],
      profileImage: json["imageUrl"],
      pronouns: json["pronouns"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "fullName": fullName,
      "pronouns": pronouns,
      "imageUrl": profileImage,
    };
  }
}
