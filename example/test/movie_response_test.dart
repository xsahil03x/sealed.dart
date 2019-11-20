import 'dart:convert';
import 'dart:io';

import 'package:example/movie_response.dart';
import 'package:example/movies.dart';
import 'package:example/movies_fetcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock implements http.Client {}

void main() {
  MockClient _mockClient;
  MoviesFetcher _fakeMovieFetcher;
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  setUpAll(() {
    _mockClient = MockClient();
    _fakeMovieFetcher = MoviesFetcher(
      client: _mockClient,
      apiKey: 'fakeApiKey',
    );
  });

  Future<String> _getMovieJson() async {
    final file = File('assets/movies.json');
    return await file.readAsString();
  }

  group('MovieResponse super enum test:', () {
    test('fetch movies should emit MovieResponse.success', () async {
      final moviesJson = await _getMovieJson();
      final movies = Movies.fromJson(json.decode(moviesJson));

      when(_mockClient.get(
        '$_baseUrl/popular?api_key=fakeApiKey',
      )).thenAnswer(
        (_) async => http.Response(moviesJson, 200, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
        }),
      );

      _fakeMovieFetcher.fetchMovies().listen(expectAsync1((event) => expect(
            event,
            MoviesResponse.success(movies: movies),
          )));
    });

    test('fetch movies should emit MovieResponse.unauthorized', () async {
      when(_mockClient.get(
        '$_baseUrl/popular?api_key=fakeApiKey',
      )).thenAnswer(
        (_) async => http.Response(await _getMovieJson(), 401, headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
        }),
      );

      _fakeMovieFetcher.fetchMovies().listen(expectAsync1((event) => expect(
            event,
            MoviesResponse.unauthorized(),
          )));
    });

    test('fetch movies should emit MovieResponse.noNetwork', () async {
      when(_mockClient.get(
        '$_baseUrl/popular?api_key=fakeApiKey',
      )).thenThrow(SocketException(''));

      _fakeMovieFetcher.fetchMovies().listen(expectAsync1((event) => expect(
            event,
            MoviesResponse.noNetwork(),
          )));
    });

    test('fetch movies should emit MovieResponse.unexpectedException',
        () async {
      final exception = Exception('Unexpected Error Occured');

      when(_mockClient.get(
        '$_baseUrl/popular?api_key=fakeApiKey',
      )).thenThrow(exception);

      _fakeMovieFetcher.fetchMovies().listen(expectAsync1((event) => expect(
            event,
            MoviesResponse.unexpectedException(exception: exception),
          )));
    });
  });
}
