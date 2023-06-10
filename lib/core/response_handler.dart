import 'package:dio/dio.dart';

abstract class ResponseHandler {
  ResponseHandler();
}
 
class SuccessResponse<T>  extends ResponseHandler {
  T model;
  SuccessResponse(this.model);
}

class ErrorResponse extends ResponseHandler {
  String error;
  ErrorResponse(this.error);
}

class ExceptionResponse extends ResponseHandler {
  DioError error;
  ExceptionResponse(this.error);
}
