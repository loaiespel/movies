// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_massage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorMassageModel _$ErrorMassageModelFromJson(Map<String, dynamic> json) =>
    ErrorMassageModel(
      statusCode: json['statusCode'] as int,
      statusMessage: json['statusMessage'] as String,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ErrorMassageModelToJson(ErrorMassageModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'statusMessage': instance.statusMessage,
      'success': instance.success,
    };
