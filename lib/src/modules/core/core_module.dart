import 'package:delivery_backoffice/src/core/rest_client/custom_dio.dart';
import 'package:delivery_backoffice/src/core/storage/session_storage.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton(
          (i) => CustomDio(),
          export: true,
        ),
        Bind.lazySingleton(
          (i) => SessionStorage(),
          export: true,
        ),
      ];
}
