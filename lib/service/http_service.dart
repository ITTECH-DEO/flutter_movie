import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:flutter_movies/models/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpService {
  final String apiKey = '4074632855fe492c72d12bb6d42603f8';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';
  final String imageUrl = 'https://image.tmdb.org/t/p/w500';
  final String popularMoviesUrl = '/movie/popular';

  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
