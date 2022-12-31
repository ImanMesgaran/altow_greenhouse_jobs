import 'package:dio/dio.dart';

class ServerException implements Exception {
  final DioError? exception;
  final String? message;
  final String? detail;

  ServerException({
    this.exception,
    this.message,
    this.detail,
  });
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message});
}
