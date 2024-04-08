import 'package:album/data/repository/movie_detail_repo_impl.dart';
import 'package:album/data/repository/movie_info_repo_impl.dart';
import 'package:album/main_view_model.dart';
import 'package:album/presentation/%20main_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
        viewModel: MovieViewModel(
          movieRepository: MovieRepositoryImpl(), //API가 안뜨고 레포지토리가 뜨는 이유 = 뮤비 뷰모델
          movieDetailRepository: MovieDetailRepositoryIpml(),
        ),
      ),
    );
  }
}
