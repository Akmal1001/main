// import 'package:aplication/core/response_handler.dart';
// import 'package:dio/dio.dart';

// class AuthService {
//   static Future<ResponseHandler> register(
//       {required String username,
//       required String email,
//       required String password}) async {
//     try {
//       Response response = await Dio().post(
//           'http://192.168.0.104:4000/register',
//           data: {'username': username, 'email': email, 'password': password});
//       if (response.statusCode == 201) {
//         return SuccessResponse();
//       } else {
//         print('NETWORK ERROR');
//         return ErrorResponse(response.statusMessage.toString());
//       }
//     } on DioError catch (e) {
//       print('ECEPTION');
//       return ExceptionResponse(e);
//     }
//   }

//   static Future login() async {}
// }
