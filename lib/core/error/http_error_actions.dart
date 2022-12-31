import 'package:dio/dio.dart';

import '../util/http_status_code_enum.dart';
import 'exceptions.dart';
import 'server_response_models/function_errors_enum.dart';

/// create an extension method to run on catch exception
extension OnDioError on DioError {
  void action(DioError e) {}
}

class OnDioErrorActions {
  OnDioErrorActions({
    required DioError exception,
    required StackTrace stackTrace,
    required FunctionsErrorType functionErrorType,
  }) {
    HttpErrorActions(
      exception: exception,
      stackTrace: stackTrace,
      errorType: functionErrorType,
    );
  }
}

class HttpErrorActions {
  HttpErrorActions({
    required DioError exception,
    required StackTrace stackTrace,
    required FunctionsErrorType errorType,
  }) {
    final _statusCode = exception.response?.statusCode;
    print(exception);

    // decide on Client errors
    if (_statusCode != null &&
        HTTPStatusCodeEnum(_statusCode).isClientError()) {
      final _message = 'Client Error: ${HTTPStatusCodeEnum(_statusCode)}';
      print(_message);

      // execute function on error
      switch (errorType) {
        case FunctionsErrorType.getJobs:
          break;

        case FunctionsErrorType.retrieveJob:
          break;

        case FunctionsErrorType.listOffices:
          break;

        case FunctionsErrorType.listDepartments:
          break;

        default:
      }
      throw ServerException(
        exception: exception,
        message: _message,
      );
    }

    // decide on Server errors
    else if (_statusCode != null &&
        HTTPStatusCodeEnum(_statusCode).isServerError()) {
      final _message = 'Server Error: ${HTTPStatusCodeEnum(_statusCode)}';
      print(_message);
      throw ServerException(
        message: _message,
        exception: exception,
      );
    }
    // decide on Network unreachable errors
    else if (_statusCode != null &&
        HTTPStatusCodeEnum(_statusCode).isNetworkUnreachable()) {
      final _message =
          'Network Unreachable Error: ${HTTPStatusCodeEnum(_statusCode)}';
      print(_message);

      throw ServerException(
        message: _message,
        exception: exception,
      );
    }
  }
}
