import 'ProfileImage.dart';

class AuthorModel {
  final String? username;

  final String? name;
  final String? first_name;
  final String? last_name;

  final String? twitter_username;
  final String? portfolio_url;

  final String? bio;

  final ProfileImageModel? profile_image;

  AuthorModel(
      {required this.username,
      required this.name,
      required this.first_name,
      required this.last_name,
      required this.twitter_username,
      required this.portfolio_url,
      required this.bio,
      required this.profile_image});

  factory AuthorModel.fromJson(Map<String, dynamic> json) {

    return AuthorModel(
      username: json['username'],
      first_name: json['first_name'],
      name: json['name'],
      last_name: json['last_name'],
      twitter_username: json['twitter_username'],
      portfolio_url: json['portfolio_url'],
      bio: json['bio'],
      profile_image: ProfileImageModel.fromJson(json['profile_image']),
    );
  }
}
