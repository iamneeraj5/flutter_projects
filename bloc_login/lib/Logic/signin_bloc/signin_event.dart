part of 'signin_bloc.dart';

@immutable
sealed class SigninEvent {}

final class SigninRequest extends SigninEvent {
  final String email;
  final String password;

  SigninRequest({
    required this.email,
    required this.password,
  });
}
