/// Profiles model

class ProfileInfo {
  final String username;
  final String? bio;
  final String image;
  final bool following;

  ProfileInfo(
      {required this.username,
      this.bio,
      required this.image,
      required this.following});

  factory ProfileInfo.fromJson(Map<String, dynamic> json) {
    return ProfileInfo(
      username: json['username'],
      bio: json['bio'],
      image: json['image'],
      following: json['following'],
    );
  }
}
