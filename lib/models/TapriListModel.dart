
import 'package:flutter/cupertino.dart';

class TapriListModel
{
  final Color? hexContainerColor;
  final Color? firstColor;
  final Color? secondColor;
  final String? containerImage;
  final String? coinName;
  final double? dollars;
  final String? coinNameAbbreviation;
  final  double? percentage;

  const TapriListModel({
    required this.hexContainerColor,
    required this.containerImage,
    required this.coinName,
    required this.dollars,
    required this.coinNameAbbreviation,
    required this.firstColor,
    required this.secondColor,
    required this.percentage,});

}