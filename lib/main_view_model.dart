import 'package:album/data/repository/movie_detail_repo.dart';
import 'package:album/data/repository/movie_info_repo.dart';
import 'package:flutter/material.dart';

import 'data/model/movie_info.dart';

//화면 이름에 맞춰서 viewModel class 작성
class MovieViewModel with ChangeNotifier {
  //ChangeNotifier Setstate 편하게 쓰라는 위젯
  final MovieRepository _movieRepository;
  final MovieDetailRepository _movieDetailRepository;

  MovieViewModel(
      {required MovieRepository movieRepository,
      required MovieDetailRepository movieDetailRepository})
      : _movieRepository = movieRepository,
        _movieDetailRepository = movieDetailRepository;

  List<MovieInfo> _movies = [];

  List<MovieInfo> get movies => List.unmodifiable(_movies);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  //일부러 Future 안씀
  void fetchMovies() async {
    _movies = await _movieRepository.getMovieInfoList();
    notifyListeners(); //UI 갱신 알림
  }
}
