import '../model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}
