import 'package:equatable/equatable.dart';

/// Domain-level error containing [errorMessage]

abstract class Failure extends Equatable {
  final String errorMessage;

  const Failure([this.errorMessage = 'Unexpected Error']);

  @override
  List<Object> get props => [errorMessage];
}

/// General Failures

class NetworkFailure extends Failure {
  static const defaultMessage = 'Network Failure';

  const NetworkFailure([String message = defaultMessage]) : super(message);
}

class ServerFailure extends Failure {
  static const defaultMessage = 'Server Failure';

  const ServerFailure([String message = defaultMessage]) : super(message);
}
