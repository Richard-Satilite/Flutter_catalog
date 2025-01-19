import 'package:flutter/material.dart';
import 'package:flutter_catalog/ui/components/movie_card.dart';
import 'package:flutter_catalog/ui/style/colors.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Image.asset(
              "assets/images/movie.png",
              height: 128,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Filmes Populares",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: AppColor.searchReleaseText,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32),
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: "Pesquisar",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => MovieCard(),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
