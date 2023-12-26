import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/models/MyFiles.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_usage_bar/storage_usage_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final InfoAnakDash info;

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: sizes.defaultBorderRadius,
      ),
      child: ListView(
        // Gunakan ListView sebagai parent
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                info.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 3,
                softWrap: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${info.beratBadan ?? ''}"
                    "${info.tinggiBadan ?? ''}"
                    "${info.lingkarKpl ?? ''}"
                    "${info.lingkarLgn ?? ''}",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: AppColors.black.withOpacity(0.7)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
