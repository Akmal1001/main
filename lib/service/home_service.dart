import 'package:aplication/model/currency_model.dart';
import 'package:dio/dio.dart';

class HomeService {
  Future getCurrency() async {
    try {
      Response response =
          await Dio().get('https://jsonplaceholder.typicode.com/comments');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => CurrencyModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
