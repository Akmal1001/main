part of 'data_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(NewsInitialState()) {
    getNews();
  }
  NewsService newsService = NewsService();
  Future<void> getNews() async {
    emit(NewsLoadingState());
    dynamic response = await newsService.getData();
    if (response is NewsService) {
      emit(NewsComleteState(response.getData()));
    } else {
      emit(NewsErrorState(response));
    }
  }
}