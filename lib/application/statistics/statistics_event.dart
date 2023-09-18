part of 'statistics_bloc.dart';

@freezed
class StatisticsEvent with _$StatisticsEvent {
  const factory StatisticsEvent.initialize() = _Initialize;
  const factory StatisticsEvent.getCategoryList() = _GetCategoryList;
  const factory StatisticsEvent.getTodoList() = _GetTodoList;
  const factory StatisticsEvent.changeDateRage(
    DateRange dateRange,
  ) = _ChangeDateRage;
  const factory StatisticsEvent.changeSelectedIndex(
    int index,
  ) = _ChangeSelectedIndex;
  const factory StatisticsEvent.refreshToken(
    String refreshToken,
  ) = _RefreshToken;
  const factory StatisticsEvent.authCheckRequested() = _AuthCheckRequested;
}
