part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getCurrency();
  }

  HomeService homeService =  HomeService();

  Future<void> getCurrency () async {
    emit(HomeLoadingState());
    await homeService.getCurrency().then((dynamic response)  {
      if (response is List<CurrencyModel>) {
        emit(HomeComplateState(response));
      } else {
        emit(HomeErrorState(response));
      }
    }
    );
  } 
}