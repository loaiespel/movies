// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdropPath'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      overview: json['overview'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      releaseData: (json['release_data'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'overview': instance.overview,
      'voteAverage': instance.voteAverage,
      'releaseData': instance.releaseData,
    };
