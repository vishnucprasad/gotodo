import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/signup_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
@prod
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IAuthFacade _facade;
  SignupBloc(this._facade) : super(SignupState.initial()) {
    on<SignupEvent>((event, emit) async {
      await event.map(
        nameChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            name: Name(e.name),
          ),
          failureOrSuccessOption: none(),
        )),
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
        signup: (e) async {
          if (state.isSigning) return;
          Either<Failure, Tokens>? failureOrSuccess;

          final isCredentialsValid = state.credentials.failureOption.isNone();
          if (isCredentialsValid) {
            emit(state.copyWith(
              isSigning: true,
              failureOrSuccessOption: none(),
            ));

            failureOrSuccess =
                await _facade.signupWithCredentials(state.credentials);

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
