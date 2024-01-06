import 'package:clutter/features/tmdb/api/response/movies/movie_response.dart';

class MoviesResponse {
  final int page;
  final List<MovieResponse> results;
  final int totalPages;
  final int totalResults;

  MoviesResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MoviesResponse.fromJson(Map<String, dynamic> json) => MoviesResponse(
        page: json['page'],
        results: _movieList(json['results']),
        totalPages: json['total_pages'],
        totalResults: json['total_results'],
      );

  static List<MovieResponse> _movieList(List<dynamic> json) => json.isNotEmpty
      ? json.map((movie) => MovieResponse.fromJson(movie)).toList()
      : [];
}
