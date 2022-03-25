class ProfileImageModel {
  final String? small;
  final String? medium;
  final String? large;

  ProfileImageModel({
    required this.small,
    required this.medium,
    required this.large,
  });

  factory ProfileImageModel.fromJson(Map<String, dynamic> json) {
    return ProfileImageModel(
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
    );
  }
}
