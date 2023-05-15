import 'package:delivery_backoffice/src/core/env/env.dart';
import 'package:dio/browser.dart';
import 'package:dio/dio.dart';

class CustomDio extends DioForBrowser {
  CustomDio()
      : super(
          BaseOptions(
            baseUrl: Env.instance.get('backend_base_url'),
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 60),
          ),
        ) {
    interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  CustomDio auth() {
    // options.headers['Authorization'] = 'Bearer ${Env.instance.get('token')}';
    return this;
  }

  CustomDio unauth() {
    // options.headers.remove('Authorization');
    return this;
  }
}
