part of 'statistics_bloc.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState({
    required bool isLoading,
    required bool showError,
    required bool checkAuth,
    required String? errorMessage,
    required List<Todo> todoList,
    required List<Category> categoryList,
    required DateRange dateRange,
    required int selectedIndex,
    required Option<Either<Failure, dynamic>> failureOrSuccessOption,
  }) = _StatisticsState;

  factory StatisticsState.initial() {
    return StatisticsState(
      isLoading: false,
      showError: false,
      checkAuth: false,
      errorMessage: null,
      todoList: [],
      categoryList: [],
      dateRange: DateRange.week(),
      selectedIndex: 0,
      failureOrSuccessOption: none(),
    );
  }
}
