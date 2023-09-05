import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/signin_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

@injectable
@prod
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final IAuthFacade _facade;
  SigninBloc(this._facade) : super(SigninState.initial()) {
    on<SigninEvent>((event, emit) async {
      await event.map(
        emailAddressChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            emailAddress: EmailAddress(e.emailAddress),
          ),
          failureOrSuccessOption: none(),
        )),
        passwordChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            password: Password(e.password),
          ),
          failureOrSuccessOption: none(),
        )),
        obscureTextChanged: (_) async => emit(state.copyWith(
          hidePassword: !state.hidePassword,
          failureOrSuccessOption: none(),
        )),
        signin: (e) async {
          if (state.isSigning) return;
          Either<Failure, Tokens>? failureOrSuccess;

          final isCredentialsValid = state.credentials.failureOption.isNone();
          if (isCredentialsValid) {
            emit(state.copyWith(
              isSigning: true,
              failureOrSuccessOption: none(),
            ));

            failureOrSuccess =
                await _facade.signinWithCredentials(state.credentials);

            if (failureOrSuccess.isRight()) {
              return emit(state.copyWith(
                isSigning: false,
                tokens: failureOrSuccess
                    .getOrElse(() => throw UnimplementedError()),
                failureOrSuccessOption: optionOf(failureOrSuccess),
              ));
            }
          }
          emit(state.copyWith(
            isSigning: false,
            showErrorMessages: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        saveTokens: (e) async {
          if (state.tokens != null) {
            await _facade.saveTokens(state.tokens!);
          }
        },
      );
    });
  }
}
