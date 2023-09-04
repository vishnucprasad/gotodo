// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gotodo/application/auth/signin/signin_bloc.dart' as _i3;
import 'package:gotodo/application/auth/signup/signup_bloc.dart' as _i4;
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
    gh.factory<_i3.SigninBloc>(
      () => _i3.SigninBloc(),
      registerFor: {_prod},
    );
    gh.factory<_i4.SignupBloc>(
      () => _i4.SignupBloc(),
      registerFor: {_prod},
    );
    return this;
  }
}
