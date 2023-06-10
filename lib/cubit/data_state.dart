abstract class DataState {
 DataState(); 
}

class DataInitialState extends DataState {
  DataInitialState();
}

class DataLoadingState extends DataState {
  DataLoadingState();
}

class DataErrorState extends DataState {
  String error;
  DataErrorState(this.error);
}

class DataCompleteState extends DataState {
  
}