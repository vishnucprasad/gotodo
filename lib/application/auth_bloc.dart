import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:gotodo/domain/core/constants.dart';
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
              clientFailure: (_) => emit(const _UnAuthenticated()),
              serverFailure: (_) => emit(const _UnAuthenticated()),
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
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(const _UnAuthenticated()),
            (r) async {
              await _facade.saveTokens(r);

              if (_refreshEvent != null) {
                add(_refreshEvent!);
              }
            },
          );
        },
      );
    });
  }
}
