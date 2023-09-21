import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/credentials.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
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
  AuthBloc(this._facade) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          await Future.delayed(const Duration(seconds: 1));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) return emit(const _UnAuthenticated());
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final userOption = await _facade.retriveUser(tokens.accessToken);
          userOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(_ErrorState(errorMessage: f.msg)),
              serverFailure: (f) => emit(_ErrorState(errorMessage: f.msg)),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.authCheckRequested();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(const _UnAuthenticated());
              },
            ),
            (r) => emit(_Authenticated(user: r)),
          );
        },
        nameChanged: (e) async {
          state.maybeMap(
            authenticated: (state) => emit(state.copyWith(
              credentials: state.credentials!.copyWith(
                name: Name(e.name),
              ),
              failureOrSuccessOption: none(),
            )),
            orElse: () => emit(
              const _ErrorState(errorMessage: 'Unauthororized'),
            ),
          );
        },
        emailAddressChanged: (e) async {
          state.maybeMap(
            authenticated: (state) => emit(state.copyWith(
              credentials: state.credentials!.copyWith(
                emailAddress: EmailAddress(e.email),
              ),
              failureOrSuccessOption: none(),
            )),
            orElse: () => emit(
              const _ErrorState(errorMessage: 'Unauthororized'),
            ),
          );
        },
        setCredentialsFromSate: (e) async {
          state.maybeMap(
            authenticated: (state) => emit(state.copyWith(
              credentials: Credentials.empty().copyWith(
                name: Name(state.user.name),
                emailAddress: EmailAddress(state.user.email),
              ),
              failureOrSuccessOption: none(),
            )),
            orElse: () => emit(
              const _ErrorState(errorMessage: 'Unauthororized'),
            ),
          );
        },
        editUser: (e) async {
          await state.mapOrNull(
            authenticated: (state) async {
              final isCredentialsValid =
                  state.credentials?.failureOption.isNone();
              if (isCredentialsValid == null || !isCredentialsValid) {
                return emit(state.copyWith(
                  isLoading: false,
                  showValidationError: true,
                ));
              }

              emit(state.copyWith(
                isLoading: true,
                failureOrSuccessOption: none(),
              ));

              final tokenOption = _facade.getTokens();
              if (tokenOption.isNone()) return emit(const _UnAuthenticated());
              final tokens =
                  tokenOption.getOrElse(() => throw UnimplementedError());

              final userOption = await _facade.editUser(
                state.credentials!,
                tokens.accessToken,
              );
              userOption.fold(
                (l) => l.map(
                  clientFailure: (f) => emit(_ErrorState(errorMessage: f.msg)),
                  serverFailure: (f) => emit(_ErrorState(errorMessage: f.msg)),
                  tokenFailure: (f) {
                    if (f.type == TokenType.accessToken) {
                      _refreshEvent = const AuthEvent.editUser();
                      return add(AuthEvent.refreshToken(tokens.refreshToken));
                    }

                    return emit(const _UnAuthenticated());
                  },
                ),
                (r) => emit(_Authenticated(
                  user: r,
                  failureOrSuccessOption: some(right(r)),
                )),
              );
            },
          );
        },
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(l.map(
              clientFailure: (f) => _ErrorState(errorMessage: f.msg),
              serverFailure: (f) => _ErrorState(errorMessage: f.msg),
              tokenFailure: (f) {
                _facade.removeTokens();
                return const _UnAuthenticated();
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
          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) return emit(const _UnAuthenticated());
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final signoutOption = await _facade.signout(tokens.accessToken);
          signoutOption.fold(
            () {
              _facade.removeTokens();
              return emit(const _UnAuthenticated());
            },
            (a) => a.map(
              clientFailure: (_) => emit(const _UnAuthenticated()),
              serverFailure: (_) => emit(const _UnAuthenticated()),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const AuthEvent.signout();
                  return add(AuthEvent.refreshToken(tokens.refreshToken));
                }

                return emit(const _UnAuthenticated());
              },
            ),
          );
        },
      );
    });
  }
}
