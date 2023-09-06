import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';

abstract class IAppRepo {
  Future<Option<List<Day>>> getDateList();
}
