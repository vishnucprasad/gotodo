import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/credentials.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/passwords.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

AuthEvent? _refreshEvent;

@injectable
@prod
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _facade;
  AuthBloc(this._facade) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          emit(state.copyWith(
            isLoading: true,
            isAuthenticated: false,
            showError: false,
            showValidationError: false,
            errorMessage: null,
            failureOrSuccessOption: none(),
          ));

          await Future.delayed(const Duration(seconds: 1));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              user: null,
            ));
          }
          final tokens = tokenOption.getOrElse(
            () => throw UnimplementedError(),
          );

          final userOption = await _facade.retriveUser(tokens.accessToken);
          userOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.authCheckRequested();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  isAuthenticated: false,
                  user: null,
                  failureOrSuccessOption: some(left(l)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              isLoading: false,
              isAuthenticated: true,
              user: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        nameChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            name: Name(e.name),
          ),
          failureOrSuccessOption: none(),
        )),
        emailAddressChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            emailAddress: EmailAddress(e.email),
          ),
          failureOrSuccessOption: none(),
        )),
        setCredentialsFromSate: (e) async => emit(state.copyWith(
          credentials: Credentials.empty().copyWith(
            name: Name(state.user?.name ?? ""),
            emailAddress: EmailAddress(state.user?.email ?? ""),
          ),
          failureOrSuccessOption: none(),
        )),
        editUser: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            showValidationError: false,
            failureOrSuccessOption: none(),
          ));

          final isCredentialsValid = state.credentials.failureOption.isNone();
          if (!isCredentialsValid) {
            return emit(state.copyWith(
              isLoading: false,
              showValidationError: true,
            ));
          }

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              isAuthenticated: false,
              user: null,
            ));
          }
          final tokens = tokenOption.getOrElse(
            () => throw UnimplementedError(),
          );

          final userOption = await _facade.editUser(
            state.credentials,
            tokens.accessToken,
          );
          userOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.editUser();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  isAuthenticated: false,
                  user: null,
                  failureOrSuccessOption: some(left(l)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              isLoading: false,
              isAuthenticated: true,
              user: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        currentPasswordChanged: (e) async => emit(state.copyWith(
          passwords: state.passwords.copyWith(
            currentPassword: Password(e.password),
          ),
        )),
        newPasswordChanged: (e) async => emit(state.copyWith(
          passwords: state.passwords.copyWith(
            newPassword: Password(e.password),
          ),
        )),
        confirmationPasswordChanged: (e) async => emit(state.copyWith(
          passwords: state.passwords.copyWith(
            confirmationPassword: ConfirmationPassword(
              e.password,
              state.passwords.newPassword,
            ),
          ),
        )),
        currentPasswordVisibiltyChanged: (e) async => emit(state.copyWith(
          hideCurrentPassword: !state.hideCurrentPassword,
        )),
        newPasswordVisibiltyChanged: (e) async => emit(state.copyWith(
          hideNewPassword: !state.hideNewPassword,
        )),
        confirmationPasswordVisibiltyChanged: (e) async => emit(state.copyWith(
          hideConfirmationPassword: !state.hideConfirmationPassword,
        )),
        changePassword: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            showValidationError: false,
            failureOrSuccessOption: none(),
          ));

          final isPasswordsValid = state.passwords.failureOption.isNone();
          if (!isPasswordsValid) {
            return emit(state.copyWith(
              isLoading: false,
              showValidationError: true,
            ));
          }

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              isAuthenticated: false,
              user: null,
            ));
          }
          final tokens = tokenOption.getOrElse(
            () => throw UnimplementedError(),
          );

          final passwordOption = await _facade.changePassword(
            state.passwords,
            tokens.accessToken,
          );
          passwordOption.fold(
            () {
              return emit(state.copyWith(
                isLoading: false,
                passwords: Passwords.empty(),
                failureOrSuccessOption: some(right(none())),
              ));
            },
            (a) => a.map(
              clientFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.changePassword();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  isAuthenticated: false,
                  user: null,
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
          );
        },
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(l.map(
              clientFailure: (f) => state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              ),
              serverFailure: (f) => state.copyWith(
                isLoading: false,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(l)),
              ),
              tokenFailure: (f) {
                _facade.removeTokens();
                return state.copyWith(
                  isLoading: false,
                  isAuthenticated: false,
                  user: null,
                  failureOrSuccessOption: some(left(l)),
                );
              },
            )),
            (r) async {
              await _facade.saveTokens(r);

              if (_refreshEvent != null) {
                add(_refreshEvent!);
              }
            },
          );
        },
        signout: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            showValidationError: false,
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              isAuthenticated: false,
              user: null,
            ));
          }
          final tokens = tokenOption.getOrElse(
            () => throw UnimplementedError(),
          );

          final signoutOption = await _facade.signout(tokens.accessToken);
          signoutOption.fold(
            () {
              _facade.removeTokens();
              return emit(state.copyWith(
                isLoading: false,
                isAuthenticated: false,
                user: null,
                failureOrSuccessOption: none(),
              ));
            },
            (a) => a.map(
              clientFailure: (_) => emit(state.copyWith(
                isLoading: false,
                isAuthenticated: false,
                user: null,
                failureOrSuccessOption: none(),
              )),
              serverFailure: (_) => emit(state.copyWith(
                isLoading: false,
                isAuthenticated: false,
                user: null,
                failureOrSuccessOption: none(),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.signout();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  isAuthenticated: false,
                  user: null,
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
          );
        },
      );
    });
  }
}
