import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';

class AgeField extends StatelessWidget {
  final String userName;
  final DateTime birthDate;

  AgeField({
    Key? key,
    required this.userName,
    required this.birthDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);

    // Calculate age based on current date and birthdate
    int age = DateTime.now().year - birthDate.year;
    int month = DateTime.now().month - birthDate.month;
    int day = DateTime.now().day - birthDate.day;

    // Adjust day value to ensure it's not negative
    if (day < 0) {
      // Calculate the days remaining in the current month
      final daysInMonth =
          DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
      day += daysInMonth;
      month--; // Decrease the month count since we're borrowing days from the next month
    }
    if (month < 0) {
      month += 12; // Increase the month count by 12 to handle negative values
      age--; // Decrease the age since we're borrowing months from the next year
    }

// Check if the age is less than 1 year
    if (age < 1) {
      age = 0; // Set age to 0 for ages less than 1 year
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: sizes.defaultPaddingValue),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$userName',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  '$age Tahun, $month Bulan, $day Hari',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: sizes.defaultPaddingValue / 2),
          // InkWell(
          //   onTap: () {},
          //   child: Container(
          //     padding: EdgeInsets.all(sizes.defaultPaddingValue * 0.75),
          //     decoration: BoxDecoration(
          //       color: AppColors.primaryColor,
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(10),
          //       ),
          //     ),
          //     child: SvgPicture.asset(AppIcons.search),
          //   ),
          // ),
        ],
      ),
    );
  }
}
