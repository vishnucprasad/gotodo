import 'package:flutter/material.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';
import 'package:gotodo/presentation/widgets/list_view/menu_list_view.dart';

class MenuBottomsheet extends StatelessWidget {
  const MenuBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;

    return DraggableScrollableSheet(
      initialChildSize: 0.75,
      minChildSize: 0.5,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                thickness: 5,
                indent: size.width / 2.75,
                endIndent: size.width / 2.75,
              ),
              kHeightMedium,
              Expanded(
                child: MenuListView(
                  controller: scrollController,
                ),
              ),
              kHeight,
            ],
          ),
        ),
      ),
    );
  }
}
