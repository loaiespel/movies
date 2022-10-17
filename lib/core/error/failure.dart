import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);
  @override
  List<Object?> get props => [message];
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);

  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
 const ServerFailure(super.message);

  @override
  List<Object?> get props => [];
}

// class EmptyCacheFailure extends Failure {
//   @override
//   List<Object?> get props => [];
// }
//
