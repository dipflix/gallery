class ImageUrlsModel {
  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;
  final String? small_s3;

  ImageUrlsModel(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb,
      required this.small_s3});

  factory ImageUrlsModel.fromJson(Map<String, dynamic> json) {
    return ImageUrlsModel(
      raw: json['raw'],
      full: json['full'],
      regular: json['regular'],
      small: json['small'],
      thumb: json['thumb'],
      small_s3: json['small_s3'],
    );
  }
}
