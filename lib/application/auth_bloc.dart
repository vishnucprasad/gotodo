import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

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
          emit(userOption.fold(
            (l) => l.map(
              clientFailure: (_) => const _UnAuthenticated(),
              serverFailure: (_) => const _UnAuthenticated(),
              tokenFailure: (_) => const _UnAuthenticated(),
            ),
            (r) => _Authenticated(user: r),
          ));
        },
      );
    });
  }
}
