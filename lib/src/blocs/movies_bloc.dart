import 'dart:async';

import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';

class MoviesBloc{
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();


  Stream<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMoview();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose(){
    _moviesFetcher.close();
  }

}

final bloc = MoviesBloc();