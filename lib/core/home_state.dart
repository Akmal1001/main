import 'package:aplication/model/currency_model.dart';
import 'package:aplication/service/home_service.dart';
import 'package:bloc/bloc.dart';

part 'home_cubit.dart';

abstract class HomeState {
    HomeState();
}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
}

class HomeErrorState extends HomeState {
  String error;
  HomeErrorState(this.error);
}

class HomeComplateState extends HomeState {
  List<CurrencyModel> data;
  HomeComplateState(this.data);
}