// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gotodo/application/app/app_bloc.dart' as _i12;
import 'package:gotodo/application/auth/auth_bloc.dart' as _i13;
import 'package:gotodo/application/auth/signin/signin_bloc.dart' as _i9;
import 'package:gotodo/application/auth/signup/signup_bloc.dart' as _i10;
import 'package:gotodo/application/todo/todo_bloc.dart' as _i11;
import 'package:gotodo/domain/app/i_app_repo.dart' as _i3;
import 'package:gotodo/domain/auth/i_auth_facade.dart' as _i5;
import 'package:gotodo/domain/todo/i_todo_repo.dart' as _i7;
import 'package:gotodo/infrastructure/app/app_repo.dart' as _i4;
import 'package:gotodo/infrastructure/auth/auth_facade.dart' as _i6;
import 'package:gotodo/infrastructure/todo/todo_repo.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IAppRepo>(() => _i4.AppRepo());
    gh.factory<_i5.IAuthFacade>(
      () => _i6.AuthFacade(),
      registerFor: {_prod},
    );
    gh.factory<_i7.ITodoRepo>(() => _i8.TodoRepo());
    gh.factory<_i9.SigninBloc>(
      () => _i9.SigninBloc(gh<_i5.IAuthFacade>()),
      registerFor: {_prod},
    );
    gh.factory<_i10.SignupBloc>(
      () => _i10.SignupBloc(gh<_i5.IAuthFacade>()),
      registerFor: {_prod},
    );
    gh.factory<_i11.TodoBloc>(
      () => _i11.TodoBloc(gh<_i7.ITodoRepo>()),
      registerFor: {_prod},
    );
    gh.factory<_i12.AppBloc>(
      () => _i12.AppBloc(gh<_i3.IAppRepo>()),
      registerFor: {_prod},
    );
    gh.factory<_i13.AuthBloc>(
      () => _i13.AuthBloc(gh<_i5.IAuthFacade>()),
      registerFor: {_prod},
    );
    return this;
  }
}
