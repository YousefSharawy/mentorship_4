



import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/constants/api_constants.dart';


@singleton
class DioService {
  late Dio dio;

  DioService (){
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseURL,
      )
    ); 
  }
}