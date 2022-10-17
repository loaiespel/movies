class ApiConstance{
  static const String baseUrl ='https://api.themoviedb.org/3';
  static const String apiKey = "26ae08e1979e1b7c8526101e0c7cdb97";
  static const String nowPlayingMoviesPath ="$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath ="$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath ="$baseUrl/movie/top_rated?api_key=$apiKey";

}