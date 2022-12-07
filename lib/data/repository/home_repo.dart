

import '../../constant/app_constants.dart';
import '../datasource/remote/dio/dio_client.dart';
import '../response/api_response.dart';

class HomeRepo {
  final DioClient dioClient;

  HomeRepo({required this.dioClient});

  Future<ApiResponse> fetchHomeData() async {
    try {
      final response = await dioClient.post(AppConstants.home);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(e);
    }
  }
}
