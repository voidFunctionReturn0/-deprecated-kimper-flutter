import 'dart:io';
import 'package:dio/dio.dart';

class Repo {
  static Future<Response?> get(Uri url) async {
    final response = await Dio().getUri(url);

    return switch (response.statusCode) {
      HttpStatus.ok => response.data.first,
      _ => null,
    };
  }
}
