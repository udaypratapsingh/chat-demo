import 'package:chatdemo/Common/advanced_bloc/Bloc.dart';
import 'package:chatdemo/models/user_model.dart';
import 'package:chatdemo/repository/auth_repository.dart';

class SignUpBloc extends Bloc<SignUpStateVM> {
  SignUpBloc() {
    emit(SignUpStateVM(loginState: SignUpState.none));
  }

  void signUpClicked(User user) async {
    emit(SignUpStateVM(loginState: SignUpState.submitting));
    bool success = await AuthRepository().SignUp(user);
    if (success) {
      emit(SignUpStateVM(loginState: SignUpState.success));
    } else {
      emit(SignUpStateVM(loginState: SignUpState.failure));
    }
  }
}

class SignUpStateVM {
  SignUpState loginState;
  User user;
  SignUpStateVM({this.loginState = SignUpState.none, this.user});
}

enum SignUpState { submitting, success, failure, none }
