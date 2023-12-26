import 'package:dashboardtemplate/core/app_colors.dart';
import 'package:flutter/material.dart';

class InfoAnakDash {
  final String title;
  final int? beratBadan;
  final int? tinggiBadan;
  final int? lingkarKpl;
  final int? lingkarLgn;

  InfoAnakDash({
    required this.title,
    this.beratBadan,
    this.tinggiBadan,
    this.lingkarKpl,
    this.lingkarLgn,
  });
}

// Contoh penggunaan:
List<InfoAnakDash> demoMyInfo = [
  InfoAnakDash(
    title: "Berat Badan (kg)",
    beratBadan: 13,
  ),
  InfoAnakDash(
    title: "Tinggi Badan (cm)",
    tinggiBadan: 30,
  ),
  InfoAnakDash(
    title: "Lingkar Kepala (cm)",
    lingkarKpl: 50,
  ),
  InfoAnakDash(
    title: "Lingkar Lengan Atas (cm)",
    lingkarLgn: 10,
  ),
];
