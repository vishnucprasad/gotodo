import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/app/i_app_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Injectable(as: IAppRepo)
class AppRepo implements IAppRepo {
  @override
  Future<Option<List<Day>>> getDateList() async {
    final now = DateTime.now();
    final startFrom = now.subtract(
      Duration(days: now.weekday < 6 ? now.weekday : 0),
    );
    final dateList = List.generate(
      7,
      (index) => Day(
        dateTime: startFrom.add(Duration(days: index)),
        date: startFrom.add(Duration(days: index)).day,
        weekDay: startFrom.add(Duration(days: index)).weekday,
        weekDayAbbreviation: DateFormat('E').format(
          startFrom.add(Duration(days: index)),
        ),
      ),
    );

    return dateList.isEmpty ? none() : some(dateList);
  }
}
