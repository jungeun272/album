import '../data_source/movie_info_api.dart';
import '../model/movie_info.dart';
import 'movie_info_repo.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieInfoApi _api1 = MovieInfoApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() {
    return _api1.getMovieInfoList();
  }

}

// @override
// Future<MovieDetail> getMovieDetail(int id) async {
//   List<User> movieDetail = getMovieInfoList();
//   return movieDetail;
