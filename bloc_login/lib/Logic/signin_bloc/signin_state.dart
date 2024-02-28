part of 'signin_bloc.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninSuccess extends SigninState {
  final String uid;

  SigninSuccess({required this.uid});
}

final class SigninFailure extends SigninState {
  final String error;

  SigninFailure(this.error);
  
}

final class SigninLoading extends SigninState {}
