import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/statistics/date_range.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:injectable/injectable.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';
part 'statistics_bloc.freezed.dart';

StatisticsEvent? _refreshEvent;

@injectable
@prod
class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  final IAuthFacade _facade;
  final ITodoRepo _todoRepo;
  StatisticsBloc(
    this._facade,
    this._todoRepo,
  ) : super(StatisticsState.initial()) {
    on<StatisticsEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          add(const StatisticsEvent.getCategoryList());
          add(const StatisticsEvent.getTodoList());
        },
        getCategoryList: (e) async {
          emit(state.copyWith(
            showError: false,
            errorMessage: null,
            categoryList: [],
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final categoryOption =
              await _todoRepo.getCategoryList(tokens.accessToken);

          categoryOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const StatisticsEvent.getCategoryList();
                  return add(StatisticsEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              showError: false,
              checkAuth: false,
              errorMessage: null,
              categoryList: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        getTodoList: (e) async {
          emit(state.copyWith(
            isLoading: true,
            showError: false,
            errorMessage: null,
            todoList: [],
            failureOrSuccessOption: none(),
          ));

          final tokenOption = _facade.getTokens();
          if (tokenOption.isNone()) {
            return emit(state.copyWith(
              isLoading: false,
              showError: true,
              checkAuth: true,
              errorMessage: 'No token',
            ));
          }
          final tokens =
              tokenOption.getOrElse(() => throw UnimplementedError());

          final todoOption = await _todoRepo.getTodoListByDateRange(
            state.dateRange,
            tokens.accessToken,
          );

          todoOption.fold(
            (l) => l.map(
              clientFailure: (f) => emit(state.copyWith(
                isLoading: false,
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              serverFailure: (f) => emit(state.copyWith(
                isLoading: false,
                checkAuth: true,
                showError: true,
                errorMessage: f.msg,
                failureOrSuccessOption: some(left(f)),
              )),
              tokenFailure: (f) {
                if (f.type == TokenType.accessToken) {
                  _refreshEvent = const StatisticsEvent.getTodoList();
                  return add(StatisticsEvent.refreshToken(tokens.refreshToken));
                }

                return emit(state.copyWith(
                  isLoading: false,
                  checkAuth: true,
                  showError: true,
                  errorMessage: 'Token expired',
                  failureOrSuccessOption: some(left(f)),
                ));
              },
            ),
            (r) => emit(state.copyWith(
              isLoading: false,
              showError: false,
              checkAuth: false,
              errorMessage: null,
              todoList: r,
              failureOrSuccessOption: some(right(r)),
            )),
          );
        },
        changeDateRage: (e) async {
          emit(state.copyWith(
            dateRange: e.dateRange,
          ));

          add(const StatisticsEvent.getTodoList());
        },
        changeSelectedIndex: (e) async => emit(state.copyWith(
          selectedIndex: e.index,
        )),
        refreshToken: (e) async {
          final tokenOption = await _facade.refreshToken(e.refreshToken);
          tokenOption.fold(
            (l) => emit(state.copyWith(
              showError: true,
              checkAuth: true,
              errorMessage: 'Something went wrong',
              failureOrSuccessOption: some(left(l)),
            )),
            (r) async {
              await _facade.saveTokens(r);

              if (_refreshEvent != null) {
                add(_refreshEvent!);
                _refreshEvent = null;
              }
            },
          );
        },
        authCheckRequested: (e) async {
          emit(state.copyWith(
            checkAuth: false,
          ));
        },
      );
    });
  }
}
