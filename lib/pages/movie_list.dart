import 'package:flutter/material.dart';
import 'package:flutter_movies/pages/movie_detail.dart';
import 'package:flutter_movies/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  List? movies;
  int? moviesCount;
  HttpService service = HttpService();

  @override
  void initState() {
    initialize();
    super.initState();
  }

  Future initialize() async {
    movies = [];
    movies = (await service.getPopularMovies())!;
    setState(() {
      moviesCount = movies!.length;
      movies = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    final image = "https://image.tmdb.org/t/p/w500";
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
          itemCount: moviesCount ?? 0,
          itemBuilder: (context, int position) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text(movies![position].title),
                subtitle: Text(
                  'Rating = ' + movies![position].voteAverage.toString(),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(image + movies![position].posterPath),
                ),
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (_) => MovieDetail(movies![position]),
                  );
                  Navigator.push(context, route);
                },
              ),
            );
          }),
    );
  }
}
