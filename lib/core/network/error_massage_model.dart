import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_massage_model.g.dart';

@JsonSerializable()
class ErrorMassageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool? success;
  const ErrorMassageModel({
       required this.statusCode,
       required this.statusMessage,
       this.success});

  factory ErrorMassageModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorMassageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorMassageModelToJson(this);

  @override
  List<Object?> get props => [statusCode, statusMessage, success];
}
