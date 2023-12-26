import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.dateInput,
    required this.amountOfFiles,
    required this.numberOfFiles,
  }) : super(key: key);

  final String title;
  final DateTime dateInput;
  final String amountOfFiles;
  final int numberOfFiles;

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Container(
      margin: EdgeInsets.only(top: sizes.defaultPaddingValue),
      padding: sizes.defaultPadding,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.primaryColor.withOpacity(0.15),
        ),
        borderRadius: sizes.defaultBorderRadius,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sizes.defaultPaddingValue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: AppColors.black.withOpacity(0.7),
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numberOfFiles Files",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: AppColors.black.withOpacity(0.7),
                        ),
                  )
                ],
              ),
            ),
          ),
          Text(
            amountOfFiles,
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppColors.black.withOpacity(0.7),
                ),
          ),
        ],
      ),
    );
  }
}
