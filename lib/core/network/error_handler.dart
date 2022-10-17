

import 'package:dio/dio.dart';


import 'package:easy_localization/easy_localization.dart';

import '../../translations/locale_keys.g.dart';
import 'error_massage_model.dart';

class ErrorHandler implements Exception {
  late ErrorMassageModel failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}

ErrorMassageModel _handleError(DioError error) {
  switch (error.type) {
    case DioErrorType.connectTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioErrorType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioErrorType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioErrorType.response:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ErrorMassageModel(statusCode :error.response?.statusCode ?? 0,
            statusMessage : error.response?.statusMessage ?? "");
      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioErrorType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioErrorType.other:
      return DataSource.DEFAULT.getFailure();
  }
}

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

extension DataSourceExtension on DataSource {
  ErrorMassageModel getFailure() {
    switch (this) {
      case DataSource.SUCCESS:
        return ErrorMassageModel(statusCode :ResponseCode.SUCCESS, statusMessage : ResponseMessage.SUCCESS, );
      case DataSource.NO_CONTENT:
        return ErrorMassageModel(statusCode :ResponseCode.NO_CONTENT, statusMessage :ResponseMessage.NO_CONTENT);
      case DataSource.BAD_REQUEST:statusMessage :
        return ErrorMassageModel(statusCode :ResponseCode.BAD_REQUEST,statusMessage : ResponseMessage.BAD_REQUEST);
      case DataSource.FORBIDDEN:statusMessage :
        return ErrorMassageModel(statusCode :ResponseCode.FORBIDDEN,statusMessage : ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTORISED:
        return ErrorMassageModel(statusCode :ResponseCode.UNAUTORISED,statusMessage : ResponseMessage.UNAUTORISED);
      case DataSource.NOT_FOUND:
        return ErrorMassageModel(statusCode :ResponseCode.NOT_FOUND, statusMessage :ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ErrorMassageModel(statusCode :ResponseCode.INTERNAL_SERVER_ERROR,
            statusMessage : ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.CONNECT_TIMEOUT:
        return ErrorMassageModel(
            statusCode :ResponseCode.CONNECT_TIMEOUT,statusMessage :ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return ErrorMassageModel(statusCode :ResponseCode.CANCEL,statusMessage : ResponseMessage.CANCEL);
      case DataSource.RECIEVE_TIMEOUT:
        return ErrorMassageModel(
            statusCode : ResponseCode.RECIEVE_TIMEOUT,statusMessage : ResponseMessage.RECIEVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return ErrorMassageModel(statusCode :ResponseCode.SEND_TIMEOUT, statusMessage : ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return ErrorMassageModel(statusCode :ResponseCode.CACHE_ERROR,statusMessage : ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return ErrorMassageModel(statusCode :ResponseCode.NO_INTERNET_CONNECTION,
            statusMessage : ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return ErrorMassageModel(statusCode :ResponseCode.DEFAULT, statusMessage : ResponseMessage.DEFAULT);
    }
  }
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}
class ResponseMessage {
  static  String SUCCESS = LocaleKeys.success.tr(); // success with data
  static  String NO_CONTENT =
      LocaleKeys.success.tr(); // success with no data (no content)
  static  String BAD_REQUEST =
      LocaleKeys.badRequestError.tr(); // failure, API rejected request
  static  String UNAUTORISED =
      LocaleKeys.unauthorizedError.tr(); // failure, user is not authorised
  static  String FORBIDDEN =
      LocaleKeys.forbiddenError.tr(); //  failure, API rejected request
  static  String INTERNAL_SERVER_ERROR =
      LocaleKeys.internalServerError.tr(); // failure, crash in server side
  static  String NOT_FOUND =
      LocaleKeys.notFoundError.tr(); // failure, crash in server side

  // local status code
  static String CONNECT_TIMEOUT = LocaleKeys.timeoutError.tr();
  static String CANCEL = LocaleKeys.defaultError.tr();
  static String RECIEVE_TIMEOUT = LocaleKeys.timeoutError.tr();
  static String SEND_TIMEOUT = LocaleKeys.timeoutError.tr();
  static String CACHE_ERROR = LocaleKeys.cacheError.tr();
  static String NO_INTERNET_CONNECTION = LocaleKeys.noInternetError.tr();
  static String DEFAULT = LocaleKeys.defaultError.tr();
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
