import 'package:dartz/dartz.dart';
import 'package:move/core/error/exceptions.dart';
import 'package:move/core/error/failure.dart';
import 'package:move/movies/domain/entities/movie.dart';
import 'package:move/movies/domain/repositories/base_movies_repository.dart';

import '../data_sources/movie_remote_data_source.dart';

class MoviesRepository extends BaseMoviesRepository{

  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovies()async {
final result= await baseMovieRemoteDataSource.getNowPlayingMovie();
try{
  return Right(result);
}on ServerException catch(failure) {
  return left(ServerFailure(failure.errorMassageModel.statusMessage));
}
  }

  @override
  Future<Either<Failure,List<Movie>>> getPopularMovies()async {
    final result= await baseMovieRemoteDataSource.getPopularMovies();
    try{
      return Right(result);
    }on ServerException catch(failure) {
      return left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovies()async {
    final result= await baseMovieRemoteDataSource.getTopRatedMovies();
    try{
      return Right(result);
    }on ServerException catch(failure) {
      return left(ServerFailure(failure.errorMassageModel.statusMessage));
    }
  }

}