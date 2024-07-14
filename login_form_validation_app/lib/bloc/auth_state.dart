part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthLoginSuccess extends AuthState{}
final class AuthLoginFailure extends AuthState{}