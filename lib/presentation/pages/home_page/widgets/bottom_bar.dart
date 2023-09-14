import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/modal_bottomsheet_extension.dart';
import 'package:intl/intl.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final dateList = context.read<AppBloc>().state.dateList;
        final startDate = dateList[0].dateTime;
        final endDate = dateList[6].dateTime;
        final dateRage =
            '${DateFormat.MMMd().format(startDate)} - ${DateFormat.MMMd().format(endDate)}';

        return BottomAppBar(
          padding: const EdgeInsets.all(16),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SizedBox(
            height: 60,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.showMenuBottomsheet();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 36,
                  ),
                ),
                kWidth,
                IconButton(
                  onPressed: () {
                    context
                        .read<AppBloc>()
                        .add(const AppEvent.gotoWeek(Week.previous));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Text(
                  dateRage.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<AppBloc>()
                        .add(const AppEvent.gotoWeek(Week.next));
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(
                        primaryColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {
                      context.showCreateTodoBottomsheet();
                    },
                    child: const Icon(
                      Icons.add,
                      size: 24,
                      color: lightColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
