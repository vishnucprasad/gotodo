import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gotodo/application/todo/todo_bloc.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/extension/dialog_extension.dart';
import 'package:gotodo/presentation/extension/hex_color.extension.dart';
import 'package:gotodo/presentation/widgets/buttons/form_button.dart';
import 'package:gotodo/presentation/widgets/text_fields/app_text_field.dart';

class CreateCategoryBottomsheet extends HookWidget {
  const CreateCategoryBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;
    final controller = useTextEditingController();

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

          controller.text =
              state.categoryData.categoryName.value.getOrElse(() => "");
        },
        buildWhen: (p, c) =>
            p.showValidationError != c.showValidationError ||
            p.isSubmitting != c.isSubmitting,
        builder: (context, state) {
          return DraggableScrollableSheet(
            initialChildSize: 0.25,
            minChildSize: 0.25,
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
                      controller: controller,
                      autoValidateMode: state.showValidationError
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      hintText: 'Write category name',
                      onChanged: (value) => context.read<TodoBloc>().add(
                            TodoEvent.categoryNameChanged(value),
                          ),
                      validator: (_) => context
                          .read<TodoBloc>()
                          .state
                          .categoryData
                          .categoryName
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              empty: (_) => "Category name can't be empty",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                    ),
                    kHeightMedium,
                    Row(
                      children: [
                        FormButton(
                          icon: Icons.color_lens,
                          label: state.categoryData.colorString,
                          onPressed: () {
                            context.showColorpickerDialog(
                              onColorChanged: (Color color) {
                                context.read<TodoBloc>().add(
                                    TodoEvent.colorStringChanged(
                                        color.toHex()));
                              },
                            );
                          },
                        ),
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
                              context
                                  .read<TodoBloc>()
                                  .add(const TodoEvent.createCategory());
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
