import 'package:flutter/material.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/core/constants.dart';

class DateButton extends StatelessWidget {
  const DateButton({
    super.key,
    required this.day,
    required this.color,
    required this.isSelected,
    required this.onPressed,
  });

  final Day day;
  final Color? color;
  final bool isSelected;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final titleText = Theme.of(context).textTheme.headlineMedium;
    final labelText = Theme.of(context).textTheme.labelLarge;

    return SizedBox(
      height: 60,
      width: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          shadowColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          foregroundColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          surfaceTintColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
        ),
        child: Column(
          children: [
            Text(
              '${day.date}',
              style: titleText?.copyWith(
                color: color,
              ),
            ),
            Text(
              day.weekDayAbbreviation,
              style: labelText?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            kHeightSmall,
            Container(
              height: 3,
              width: 50,
              color: isSelected ? primaryColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
