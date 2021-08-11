// This is a basic Flutter widget test.
import 'package:chatdemo/modules/login/login/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Login bloc test', () async {
    LoginBloc _bloc = LoginBloc();
    expect(_bloc.state.loginState, LoginState.none);
    await _bloc.loginClicked();
    expect(_bloc.state.loginState, LoginState.success);
  });
}
