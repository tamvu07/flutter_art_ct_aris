import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: prefer_mixin
class AppClient with DioMixin implements Dio {
  Future<void> initData() async {
    var options = BaseOptions(
      baseUrl: BASE_URL,
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );
    var sharedPrefs = await SharedPreferences.getInstance();
    options.headers['Authorization'] =
        'Bearer ${sharedPrefs.getString('token')}';

    this.options = options;

    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Future<Dio> getInstance() async {
    var client = AppClient();
    await client.initData();
    return client;
  }
}
