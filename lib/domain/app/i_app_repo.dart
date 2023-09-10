import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/constants.dart';

abstract class IAppRepo {
  Future<Option<List<Day>>> getDateList();
  Future<Option<List<Day>>> getWeekDateList(List<Day> dateList, Week week);
}
