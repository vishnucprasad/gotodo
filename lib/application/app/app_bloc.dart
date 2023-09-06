import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/app/i_app_repo.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
@prod
class AppBloc extends Bloc<AppEvent, AppState> {
  final IAppRepo _appRepo;
  AppBloc(this._appRepo) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        getDateList: (e) async {
          final dateOption = await _appRepo.getDateList();
          if (dateOption.isNone()) {
            return emit(state.copyWith(
              showError: true,
              errorMessage: "Date list error",
            ));
          }
          emit(state.copyWith(
            showError: false,
            errorMessage: null,
            dateList: dateOption.getOrElse(() => throw UnimplementedError()),
          ));
        },
        changeSelectedDateIndex: (e) {
          emit(state.copyWith(
            selectedDateIndex: e.index,
          ));
        },
      );
    });
  }
}
