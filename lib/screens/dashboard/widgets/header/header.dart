import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/search_field/search_field.dart';
import 'package:dashboardtemplate/screens/profil/editprofil_screen.dart';
import 'package:dashboardtemplate/screens/profil/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeField(
            userName: "Nathan Beska",
            birthDate: DateTime.utc(2022, 1, 28),
          ),
        ),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return InkWell(
      onTap: () {
        // Navigasi ke halaman profil ketika container diklik
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                ProfilAnak(), // Gantilah dengan halaman profil Anda
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: sizes.defaultPaddingValue),
        padding: EdgeInsets.symmetric(
          horizontal: sizes.defaultPaddingValue,
          vertical: sizes.defaultPaddingValue / 2,
        ),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: AppColors.white.withOpacity(0.1)),
        ),
        child: Row(
          children: [
            Image.asset(
              AppImages.profilePic,
              height: 38,
            ),
            SizedBox(width: sizes.defaultPaddingValue / 2),
            Text("Profil"),
            // Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
