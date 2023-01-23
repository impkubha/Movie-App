import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';
import 'package:tmdb_api/tmdb_api.dart';

class NowShowingCard extends StatefulWidget {
  const NowShowingCard({Key? key}) : super(key: key);

  @override
  State<NowShowingCard> createState() => _NowShowingCardState();
}

class _NowShowingCardState extends State<NowShowingCard> {
  @override
  List trendingmovies = [];
  final String apikey = "c3a7c24f8fa06d085d312c7dae347eb2";
  final readAccessToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjM2E3YzI0ZjhmYTA2ZDA4NWQzMTJjN2RhZTM0N2ViMiIsInN1YiI6IjYyNjdlOWJiMTJhYWJjMDA2N2E2OGJhMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OQg8Xw0KPMIxq0_cBM7r7zA96G1oIWAqY47OQlZ0CME";

  final List<Color> kMixedColors = [
    Color(0xFF4CCDEB),
  ];

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readAccessToken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    setState(() {
      trendingmovies = trendingresult["results"];
      //print(trendingmovies);
    });
  }

  Widget build(BuildContext context) {
    return ScaledList(
      itemCount: trendingmovies.length,
      itemColor: (index) {
        return kMixedColors[index % kMixedColors.length];
      },
      itemBuilder: (index, selectedIndex) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: selectedIndex == index ? 337 : 253,
              child: Image.network("https://image.tmdb.org/t/p/w500" +
                  trendingmovies[index]["poster_path"]),
            )

            // SizedBox(height: 15),
            // Text(
            //   trendingmovies[index]["title"],
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: selectedIndex == index ? 25 : 20),
            // )
          ],
        );
      },
    );
  }
}
