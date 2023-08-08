// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  late final String massage;
  Failure(this.massage);
}

class ServerFailure extends Failure {
  ServerFailure(super.massage);
  factory ServerFailure.fromDioError(DioError e) {
    // return ServerFailure(massage);

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api  server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Apo Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Api  server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with Api  server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Connection timeout with Api  server');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an Error, Please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic respons) {
if(statusCode==404){
  return ServerFailure('Your request was not found, please try later');
}else if(statusCode==500){
   return ServerFailure('There is a problem with server, please try later');
}
else if(statusCode==400||statusCode==401||statusCode==403){
  return ServerFailure(respons['error']['message']) ;

}else{
  return ServerFailure('There was an error ,please try again');
}

  }
}
