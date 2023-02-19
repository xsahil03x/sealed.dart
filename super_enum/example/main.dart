import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:super_enum/super_enum.dart';

import 'movies.dart';

part 'main.super.dart';

/// MovieResponse Possible States
@superEnum
enum _MoviesResponse {
  /// Success State of the MovieResponse
  @Data(fields: [DataField<Movies>('movies')])
  Success,

  /// Unauthorized State of the MovieResponse
  @object
  Unauthorized,

  /// NoNetwork State of the MovieResponse
  @object
  NoNetwork,

  /// UnexpectedException State of the MovieResponse
  @Data(fields: [DataField<Object>('exception')])
  UnexpectedException
}

class MoviesFetcher {
  http.Client client = http.Client();

  final String apiKey;

  MoviesFetcher({required this.apiKey});

  Future<MoviesResponse> fetchMovies() async {
    try {
      final response =
          await client.get(Uri(scheme: 'http', host: 'api.themoviedb.org', path: '/3/movie/popular', queryParameters: {'api_key': apiKey}));
      if (response.statusCode == 200) {
        final movies = Movies.fromJson(json.decode(response.body));
        return MoviesResponse.success(movies: movies);
      } else {
        return MoviesResponse.unauthorized();
      }
    } on SocketException {
      return MoviesResponse.noNetwork();
    } catch (e) {
      return MoviesResponse.unexpectedException(exception: e);
    }
  }
}

void main() async {
  final _moviesFetcher = MoviesFetcher(
    apiKey: '9c9576f8c2e86949a3220fcc32ae2fb6',
  );

  final _moviesResponse = await _moviesFetcher.fetchMovies();
  _moviesResponse.when(
    onSuccess: (data) => print('Total Movies: ${data.movies.totalPages}'),
    onUnauthorized: () => print('Invalid ApiKey'),
    onNoNetwork: () => print(
      'No Internet, Please check your internet connection',
    ),
    onUnexpectedException: (error) => print(error.exception),
  );
}
