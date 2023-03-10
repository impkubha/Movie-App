import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class NowShowingCard extends StatefulWidget {
  const NowShowingCard({Key? key}) : super(key: key);

  @override
  State<NowShowingCard> createState() => _NowShowingCardState();
}

class _NowShowingCardState extends State<NowShowingCard> {
  @override
  List upcomingmovies = [];
  final String apikey = "c3a7c24f8fa06d085d312c7dae347eb2";
  final readAccessToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjM2E3YzI0ZjhmYTA2ZDA4NWQzMTJjN2RhZTM0N2ViMiIsInN1YiI6IjYyNjdlOWJiMTJhYWJjMDA2N2E2OGJhMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OQg8Xw0KPMIxq0_cBM7r7zA96G1oIWAqY47OQlZ0CME";

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readAccessToken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.movies.getUpcoming();
    setState(() {
      upcomingmovies = trendingresult["results"];
      //print(trendingmovies);
    });
  }

  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: upcomingmovies.length - 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Image.network("https://image.tmdb.org/t/p/w500" +
                  upcomingmovies[itemIndex]["poster_path"])),
      options: CarouselOptions(
          enlargeCenterPage: true, initialPage: 1, viewportFraction: 1 / 3),
    );
  }
}
