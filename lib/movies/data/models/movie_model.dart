import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:move/movies/domain/entities/movie.dart';
import 'package:json_serializable/json_serializable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends Movie {
  const MovieModel({required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseData});

///TODO :CHECK THIS
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return _$MovieModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

}

