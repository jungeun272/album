

import '../data_source/movie_detail_api.dart';
import '../model/movie_detail.dart';
import 'movie_detail_repo.dart';

class MovieDetailRepositoryIpml implements MovieDetailRepository {
  final MovieDetailApi _api1 = MovieDetailApi();

  @override
  Future<MovieDetail> getMovieDetail(int movieId) {
    return _api1.getMovieDetail(movieId);
    // throw UnimplementedError();
  }
}
