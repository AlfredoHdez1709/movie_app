import 'dart:async';
import 'package:movieapp/src/models/trailer_model.dart';

import 'movie_api_provider.dart';
import '../models/item_model.dart';

class Repository{
  final moviesApiProvider = MovieApiProvider();
  
  Future<ItemModel> fetchAllMoview() =>
      moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) =>
      moviesApiProvider.fetchTrailer(movieId);
}