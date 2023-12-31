import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/app/app_bloc.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/buttons/category_dropdown_button.dart';
import 'package:gotodo/presentation/widgets/buttons/form_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';
import 'package:intl/intl.dart';

class CreateTodoBottomsheet extends HookWidget {
  const CreateTodoBottomsheet({
    this.todo,
    super.key,
  });

  final Todo? todo;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocConsumer<TodoBloc, TodoState>(
        listenWhen: (p, c) =>
            p.showValidationError != c.showValidationError ||
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.map(
            (a) => a.map(
              (r) => Navigator.pop(context),
            ),
          );
        },
        builder: (context, state) {
          return DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 0.75,
            builder: (context, scrollController) => Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                decoration: BoxDecoration(
                  color: isDarkMode ? secondaryDarkColor : secondaryLightColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Divider(
                      thickness: 5,
                      indent: size.width / 2.75,
                      endIndent: size.width / 2.75,
                    ),
                    kHeightMedium,
                    AppTextField(
                      initialValue: todo?.task,
                      hintText: 'Write your task',
                      autoValidateMode: state.showValidationError
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      onChanged: (value) => context
                          .read<TodoBloc>()
                          .add(TodoEvent.todoTaskChanged(value)),
                      validator: (_) => context
                          .read<TodoBloc>()
                          .state
                          .todoData
                          .task
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Todo task can't be empty",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                    ),
                    kHeightMedium,
                    AppTextField(
                      initialValue: todo?.description,
                      onChanged: (value) => context
                          .read<TodoBloc>()
                          .add(TodoEvent.todoDescriptionChanged(value)),
                      hintText: 'Write description',
                      maxLines: 4,
                    ),
                    kHeightMedium,
                    Row(
                      children: [
                        FormButton(
                          icon: Icons.calendar_month,
                          label: DateFormat.MMMd().format(state.todoData.date),
                          onPressed: () async {
                            final selectedDate = await showDatePicker(
                              context: context,
                              initialDate: state.todoData.date,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            );

                            if (selectedDate != null) {
                              // ignore: use_build_context_synchronously
                              context
                                  .read<TodoBloc>()
                                  .add(TodoEvent.todoDateChanged(selectedDate));
                            }
                          },
                        ),
                        kWidthMedium,
                        const CategoryDropdownButton(),
                        const Spacer(),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                primaryColor,
                              ),
                              shape: MaterialStatePropertyAll<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (todo != null) {
                                return context
                                    .read<TodoBloc>()
                                    .add(TodoEvent.editTodo(
                                      todo!.id,
                                      context.read<AppBloc>().state.dateList,
                                    ));
                              }

                              context.read<TodoBloc>().add(TodoEvent.createTodo(
                                    context.read<AppBloc>().state.dateList,
                                  ));
                            },
                            child: state.isSubmitting
                                ? const SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: CircularProgressIndicator(
                                      color: lightColor,
                                    ),
                                  )
                                : const Icon(
                                    Icons.send,
                                    size: 24,
                                    color: lightColor,
                                  ),
                          ),
                        ),
                      ],
                    ),
                    kHeight,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
