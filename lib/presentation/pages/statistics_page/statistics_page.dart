import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/auth/auth_bloc.dart';
import 'package:gotodo/application/statistics/statistics_bloc.dart';
import 'package:gotodo/injection.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/snackbar_extension.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/category_progress_tile.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_app_bar.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_overview.dart';
import 'package:gotodo/presentation/pages/statistics_page/widgets/statistics_toggle_tab.dart';

@RoutePage()
class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StatisticsBloc>()
        ..add(
          const StatisticsEvent.initialize(),
        ),
      child: BlocConsumer<StatisticsBloc, StatisticsState>(
        listenWhen: (p, c) =>
            p.checkAuth != c.checkAuth || p.showError != c.showError,
        listener: (context, state) {
          if (state.showError && state.errorMessage != null) {
            return context.showErrorSnackBar(message: state.errorMessage!);
          }

          if (state.checkAuth) {
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
            context
                .read<StatisticsBloc>()
                .add(const StatisticsEvent.authCheckRequested());
          }
        },
        builder: (context, state) {
          final List<CategoryProgressTile> categoryProgressTileList = [
            ...List.generate(
              state.categoryList.length,
              (index) => CategoryProgressTile(
                todoList: state.todoList,
                category: state.categoryList[index],
              ),
            ),
            CategoryProgressTile(todoList: state.todoList),
          ];

          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const StatisticsAppBar(),
                  kHeight,
                  StatisticsToggleTab(selectedIndex: state.selectedIndex),
                  kHeight,
                  state.isLoading
                      ? const Expanded(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : Expanded(
                          child: Column(
                            children: [
                              StatisticsOverview(
                                categoryList: state.categoryList,
                                todoList: state.todoList,
                              ),
                              kHeight,
                              Expanded(
                                child: ListView.separated(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  itemBuilder: (context, index) =>
                                      categoryProgressTileList[index],
                                  separatorBuilder: (context, index) =>
                                      const Divider(thickness: 1),
                                  itemCount: categoryProgressTileList.length,
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
