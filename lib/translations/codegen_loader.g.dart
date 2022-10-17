// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "success": "تم النجاح",
  "noInternetError": "يُرجى التحقق من اتصالك بالإنترنت",
  "cacheError": "خطأ في ذاكرة التخزين المؤقت , حاول مرة أخرى لاحقًا",
  "defaultError": "حدث خطأ ما , حاول مرة أخرى لاحقًا",
  "timeoutError": "انتهت المهلة , حاول مرة أخرى متأخرًا",
  "unknownError": "حدث خطأ ما , حاول مرة أخرى لاحقًا",
  "internalServerError": "حدث خطأ ما , حاول مرة أخرى لاحقًا",
  "conflictError": "تم العثور على تعارض , حاول مرة أخرى لاحقًا",
  "notFoundError": "url غير موجود , حاول مرة أخرى لاحقًا",
  "unauthorizedError": "مستخدم غير مصرح له , حاول مرة أخرى لاحقًا",
  "forbiddenError": "طلب محظور. حاول مرة أخرى لاحقًا",
  "badRequestError": "طلب غير صالح. حاول مرة أخرى لاحقًا",
  "noContent": "انتهت المهلة , حاول مرة أخرى متأخرًا"
};
static const Map<String,dynamic> en = {
  "success": "Success",
  "noInternetError": "Please check your internet connection",
  "cacheError": "cache error, try again later",
  "defaultError": "some thing went wrong, try again later",
  "timeoutError": "time out, try again late",
  "unknownError": "some thing went wrong, try again later",
  "internalServerError": "some thing went wrong, try again later",
  "conflictError": "conflict found, try again later",
  "notFoundError": "url not found, try again later",
  "unauthorizedError": "user unauthorized, try again later",
  "forbiddenError": "forbidden request. try again later",
  "badRequestError": "bad request. try again later",
  "noContent": "success with not content"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
