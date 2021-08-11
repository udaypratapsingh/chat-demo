// This is a basic Flutter widget test.
import 'package:chatdemo/models/user_model.dart';
import 'package:chatdemo/modules/login/signup/signup_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  test('Login bloc test', () async {
    SignUpBloc _bloc = SignUpBloc();
    expect(_bloc.state.loginState, SignUpState.none);
    User user = User(email: "ups.chauhan84@gmail.com", password: "123456789");
    await _bloc.signUpClicked(user);
    expect(_bloc.state.loginState, SignUpState.success);
  });
}
