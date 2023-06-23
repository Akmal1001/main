import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../service/data_service.dart';
part 'data_cubit.dart';


abstract class HomeState extends Equatable {
  HomeState();

  @override
  List<Object?> get props => [];
}

class NewsInitialState extends HomeState {
  NewsInitialState();

  @override
  List<Object?> get props => [];
}

class NewsLoadingState extends HomeState {
  NewsLoadingState();
  @override
  List<Object?> get props => [];
}

class NewsErrorState extends HomeState {
 final String error;
  @override
  List<Object?> get props => [];
  NewsErrorState(this.error);
}

class NewsComleteState extends HomeState {
  NewsComleteState(getNews);
  @override
  List<Object?> get props => [];
}