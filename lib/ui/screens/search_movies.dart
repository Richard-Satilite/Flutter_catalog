import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/components/movie_card.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MovieCard(),
    );
  }
}
