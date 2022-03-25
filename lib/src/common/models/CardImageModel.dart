import 'imageUrlsModel.dart';
import 'user/AuthorModel.dart';

class CardImageModel {
  final AuthorModel? author;
  final ImageUrlsModel? imageUrls;

  CardImageModel({
    required this.author,
    required this.imageUrls,
  });

  factory CardImageModel.fromJson(Map<String, dynamic> json) {
    return CardImageModel(
      author: AuthorModel.fromJson(json['user']),
      imageUrls: ImageUrlsModel.fromJson(json['urls']!),
    );
  }
}
