import 'dart:html';

import 'package:delivery_backoffice/src/core/global/constants.dart';
import 'package:delivery_backoffice/src/models/auth_model.dart';
import 'package:delivery_backoffice/src/repositories/auth/auth_repository.dart';
import 'package:delivery_backoffice/src/core/storage/storage.dart';
import './login_service.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _authRepository;
  final Storage _storage;

  LoginServiceImpl(this._authRepository, this._storage);

  @override
  Future<void> execute(String email, String password) async {
    final AuthModel authModel = await _authRepository.login(
      email,
      password,
    );
    _storage.setData(SessionStorageKeys.accessToken.key, authModel.accessToken);
  }
}
