import 'package:dartz/dartz.dart';
import 'package:move/movies/domain/entities/movie.dart';
import 'package:move/movies/domain/repositories/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetTopRatedMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);


  Future<Either<Failure,List<Movie>>>execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}