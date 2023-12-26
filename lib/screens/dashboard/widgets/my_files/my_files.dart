import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/models/MyFiles.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/file_info_card/file_info_card.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FileInfoCardGridView(
          crossAxisCount: 4,
          aspectRatio: 1,
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.aspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    // AppSizes sizes = AppSizes(context);
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 2.0,
          childAspectRatio: 4.0),
      itemBuilder: (context, index) {
        return FileInfoCard(info: demoMyInfo[index]);
      },
    );
  }
}
