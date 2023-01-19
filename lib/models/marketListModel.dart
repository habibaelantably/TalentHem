
import 'package:flutter/cupertino.dart';

class MarketListModel
{
  final Color? hexContainerColor;
  final String? containerImage;
  final String? marketName;
  final double? marketDollars;
  final String? marketNameAbbreviation;
  final  double? percentage;

  const MarketListModel({
    required this.hexContainerColor,
    required this.containerImage,
    required this.marketName,
    required this.marketDollars,
    required this.marketNameAbbreviation,
    required this.percentage,});

}