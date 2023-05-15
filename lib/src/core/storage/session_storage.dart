import 'package:delivery_backoffice/src/core/storage/storage.dart';
import 'dart:html';

class SessionStorage extends Storage {
  @override
  void clean(String key) {
    void clean(String key) => window.sessionStorage.clear();
  }

  @override
  String getDtata(String key) => window.sessionStorage[key] ?? '';

  @override
  void setData(String key, String value) => window.sessionStorage[key] = value;
}
