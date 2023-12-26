import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/kepala_usia_chart.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/lengan_usia_chart%20copy.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/bb_tb_chart.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/berat_usia_chart.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/tinggi_usia_chart.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_info_card/storage_info_card.dart';
import 'package:flutter/material.dart';

class TinggiUsia_details extends StatelessWidget {
  const TinggiUsia_details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Container(
      padding: sizes.defaultPadding,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: sizes.defaultBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tinggi Badan Sesuai Usia",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: sizes.defaultPaddingValue),
          TinggiChart(),
          SizedBox(height: sizes.defaultPaddingValue),

          // StorageInfoCard(
          //   title: "Documents Files",
          //   icon: AppIcons.documents,
          //   numberOfFiles: 7543,
          //   amountOfFiles: "22.85GB",
          // ),
          // SizedBox(height: sizes.defaultPaddingValue),

          // StorageInfoCard(
          //   title: "Media Files",
          //   icon: AppIcons.media,
          //   numberOfFiles: 520,
          //   amountOfFiles: "18.29GB",
          // ),
          // SizedBox(height: sizes.defaultPaddingValue),

          // StorageInfoCard(
          //   title: "Other Files",
          //   icon: AppIcons.folder,
          //   numberOfFiles: 2043,
          //   amountOfFiles: "9.14GB",
          // ),
          // SizedBox(height: sizes.defaultPaddingValue),

          // StorageInfoCard(
          //   title: "Unknown",
          //   icon: AppIcons.unknown,
          //   numberOfFiles: 1327,
          //   amountOfFiles: "13.72GB",
          // ),
        ],
      ),
    );
  }
}
