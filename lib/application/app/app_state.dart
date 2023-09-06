part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool isLoading,
    required bool showError,
    required String? errorMessage,
    required List<Day> dateList,
    required int selectedDateIndex,
    required Option<Either<Failure, dynamic>> failureOrSuccessOption,
  }) = _SigninState;

  factory AppState.initial() {
    return AppState(
      isLoading: false,
      showError: false,
      errorMessage: null,
      dateList: [],
      selectedDateIndex:
          DateTime.now().weekday < 7 ? DateTime.now().weekday : 0,
      failureOrSuccessOption: none(),
    );
  }
}
