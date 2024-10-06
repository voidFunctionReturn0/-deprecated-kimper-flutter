import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Repo {
  static Future<Map> get(Uri url) async {
    debugPrint('## get: $url');

    final response = await Dio().getUri(url);

    debugPrint('## Repo.get response: ${response.data.first.runtimeType}');

    switch (response.statusCode) {
      case HttpStatus.ok:
        var result = Map.from(response.data.first);
        return result;

      default:
        debugPrint(
            '## Repo.get Error: ${response.statusCode} ${response.statusMessage}');
        return {};
    }
  }
}
