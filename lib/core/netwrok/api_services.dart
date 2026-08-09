import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/dio_service.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';
@RestApi()
@injectable
abstract class ApiServices {
@factoryMethod
factory ApiServices(DioService client) => _ApiServices(client.dio);
}