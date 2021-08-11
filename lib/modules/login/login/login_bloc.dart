import 'package:chatdemo/Common/advanced_bloc/Bloc.dart';

class LoginBloc extends Bloc<LoginStateVM> {
  LoginBloc() {
    emit(LoginStateVM(loginState: LoginState.none));
  }

  void loginClicked() async {
    emit(LoginStateVM(loginState: LoginState.submitting));
    await Future.delayed(Duration(seconds: 2));
    emit(LoginStateVM(loginState: LoginState.success));
  }
}

class LoginStateVM {
  LoginState loginState;
  LoginStateVM({this.loginState = LoginState.none});
}

enum LoginState { submitting, success, failure, none }
