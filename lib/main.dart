import 'package:flutter/material.dart';
import 'package:movieapp/widgets/nowshowing.dart';
import 'package:movieapp/widgets/nowshowingcard.dart';
import 'package:movieapp/widgets/searchbox.dart';
import 'package:movieapp/widgets/userwidget.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
  // List trendingmovies = [];
  // final String apikey = "c3a7c24f8fa06d085d312c7dae347eb2";
  // final readAccessToken =
  //     "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjM2E3YzI0ZjhmYTA2ZDA4NWQzMTJjN2RhZTM0N2ViMiIsInN1YiI6IjYyNjdlOWJiMTJhYWJjMDA2N2E2OGJhMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OQg8Xw0KPMIxq0_cBM7r7zA96G1oIWAqY47OQlZ0CME";

  // @override
  // void initState() {
  //   loadMovies();
  //   super.initState();
  // }

  // loadMovies() async {
  //   TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readAccessToken),
  //       logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
  //   Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
  //   setState(() {
  //     trendingmovies = trendingresult["results"];
  //     //print(trendingmovies);
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF05103A),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: UserWidget()),
          Container(
            child: SearchBox(),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: nowShowing()),
          Container(
            child: NowShowingCard(),
          )
        ],
      ),
    );
  }
}
