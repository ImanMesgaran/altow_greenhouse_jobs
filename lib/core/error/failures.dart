import 'package:equatable/equatable.dart';

import 'exceptions.dart';

abstract class Failure extends Equatable {
  // the errors and also to compare different failures(exceptions)
  Failure([List properties = const <dynamic>[]]);
}

class ServerFailure extends Failure {
  final ServerException serverException;

  ServerFailure({required this.serverException});

  @override
  List<Object> get props => [serverException];
}

class CacheFailure extends Failure {
  final String message;

  CacheFailure({required this.message});

  @override
  List<Object> get props => [message];
}

class InternetFailure extends ServerFailure {
  InternetFailure({required ServerException serverException})
      : super(serverException: serverException);

  @override
  List<Object> get props => [];
}
