import 'package:album/main_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final MovieViewModel viewModel;

  const MainScreen({super.key, required this.viewModel});

  @override
  State<MainScreen> createState() =>
      _MainScreenState(); //StatefulWidget로 했을 시 자동으로 생성해주는 것
}

class _MainScreenState extends State<MainScreen> {
  void updateUi() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(updateUi); //콜백 함수를 받는 것임. 퉁칠 수 있다.
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(updateUi);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Info'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => viewModel.fetchMovies(),
            child: const Text('가져오기'),
          ),
          ...viewModel.movies.map(
            (e) => Text(e.title),
          ),
        ], //...리스트인것을 spread로 뿌리는 것 복사를 뜨는 것 foreach print 느낌
      ),
    );
  }
}
