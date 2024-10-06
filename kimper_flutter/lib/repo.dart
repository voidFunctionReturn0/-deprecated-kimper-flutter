import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Repo {
  // TODO: Response가 아닌, json 파싱한 것을 반환하기 https://stackoverflow.com/questions/15866290/the-best-way-to-parse-a-json-in-dart
  static Future<Response?> get(Uri url) async {
    final response = await Dio().getUri(url);

    switch (response.statusCode) {
      case HttpStatus.ok:
        return response.data.first;

      default:
        debugPrint(
            '## Repo.get Error: ${response.statusCode} ${response.statusMessage}');
        return null;
    }
  }
}
