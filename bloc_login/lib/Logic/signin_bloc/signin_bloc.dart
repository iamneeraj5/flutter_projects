import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(SigninInitial()) {
    on<SigninRequest>((event, emit) async {
      emit(SigninLoading());
      try {
        final email = event.email;
        final password = event.password;
        if (email.isEmpty || password.isEmpty) {
          return emit(SigninFailure('Invalid Username/Password '));
        }
        await Future.delayed(const Duration(seconds: 1), () {
          return emit(SigninSuccess(uid: '$email-$password'));
        });
      } catch (e) {
        return emit(SigninFailure(e.toString()));
      }
    });
  }
}
