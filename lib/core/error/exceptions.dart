import 'package:move/core/network/error_massage_model.dart';

class ServerException implements Exception{
  final ErrorMassageModel errorMassageModel;

  const ServerException({required this.errorMassageModel});
}
class LocalDatabaseException implements Exception{
  final String message;

  const LocalDatabaseException({required this.message});
}