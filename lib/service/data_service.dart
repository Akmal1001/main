import 'package:dio/dio.dart';

class NewsService {
   Future<dynamic> getData() async {
    try {
      Response response = await Dio().get("");
      if (response.statusCode == 200) {
        return (response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}