import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

final Request HttpClient = Request();

class Request {
  static final Request _singleton = Request._internal();

  factory Request() {
    return _singleton;
  }

  Request._internal();

  final String baseUri = dotenv.get("API_URL");

  final Map<String, String> _defaultHeaders = {
    "Authorization": "Client-ID ${dotenv.get("UNSPLASH_API_TOKEN")}"
  };

  final http.Client _httpClient = http.Client();

  Future<Response> get(String url, {Map<String, String>? headers}) =>
      _httpClient.get(Uri.parse(baseUri + url), headers: _defaultHeaders);

  Future<Response> post(String url,
          {Map<String, String>? headers, dynamic body, Encoding? encoding}) =>
      _httpClient.post(Uri.parse(baseUri + url),
          headers: _mergedHeaders(headers!), body: body, encoding: encoding);

  Future<Response> patch(String url,
          {Map<String, String>? headers, dynamic body, Encoding? encoding}) =>
      _httpClient.patch(Uri.parse(baseUri + url),
          headers: _mergedHeaders(headers!), body: body, encoding: encoding);

  Future<Response> put(String url,
          {Map<String, String>? headers, dynamic body, Encoding? encoding}) =>
      _httpClient.put(Uri.parse(baseUri + url),
          headers: _mergedHeaders(headers!), body: body, encoding: encoding);

  Future<Response> head(url, {Map<String, String>? headers}) => _httpClient
      .head(Uri.parse(baseUri + url), headers: _mergedHeaders(headers!));

  Map<String, String> _mergedHeaders(Map<String, String> headers) =>
      {..._defaultHeaders, ...headers};
}
