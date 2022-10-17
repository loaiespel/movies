import 'package:dio/dio.dart';
import 'package:move/core/error/exceptions.dart';
import 'package:move/core/network/api_constance.dart';
import 'package:move/movies/data/models/movie_model.dart';

import '../../../core/network/error_handler.dart';
import '../../../core/network/error_massage_model.dart';

abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();


}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(
       ApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"]).map((e) => MovieModel.fromJson(e)));
    }
else {
  throw ErrorMassageModel.fromJson(response.data);
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
    final response = await Dio().get(
        ApiConstance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"]).map((e) => MovieModel.fromJson(e)));
    }
    else {
      // throw ErrorMassageModel.fromJson(response.data);
      throw ServerException(errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async{
    final response = await Dio().get(
        ApiConstance.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"]).map((e) => MovieModel.fromJson(e)));
    }
    else {
      throw ErrorMassageModel.fromJson(response.data);
    }
  }
}
