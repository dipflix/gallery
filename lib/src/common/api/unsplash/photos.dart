import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gallery_qulisoft/src/common/httpClient.dart';
import 'package:gallery_qulisoft/src/common/models/CardImageModel.dart';
import 'package:http/http.dart' as http;

Future<List<CardImageModel>> fetchPhotos() async {
  final _response = await HttpClient.get("photos");

  if (_response.statusCode == 200) {
    var _data = jsonDecode(_response.body) as List;
    return _data.map((e) => CardImageModel.fromJson(e)).toList();
  } else {
    throw Exception("[fetchPhotos] filed to load");
  }
}
