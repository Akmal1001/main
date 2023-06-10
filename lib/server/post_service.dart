import 'package:aplication/core/response_handler.dart';
import 'package:aplication/model/data_model.dart';
import 'package:dio/dio.dart';

class PostService {
  static Future<ResponseHandler> getPosts() async {
    try {
      Response response = await Dio().get('http://192.168.0.104:4000/home');
      if (response.statusCode == 200) {
        return SuccessResponse(
            (response.data as List).map((e) => DataModel.fromJson(e)).toList());
      } else {
        return ErrorResponse(response.statusMessage.toString());
      }
    } on DioError catch (e) {
      return ExceptionResponse(e);
    }
  }
}
