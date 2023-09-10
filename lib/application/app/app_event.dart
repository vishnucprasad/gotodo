part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.getDateList() = _GetDateList;
  const factory AppEvent.changeSelectedDateIndex(int index) =
      _ChangeSelectedDateIndex;
  const factory AppEvent.gotoWeek(Week week) = _gotoWeek;
}
