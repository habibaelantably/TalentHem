import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'hexagon_container.dart';

class HexagonWithImage extends StatelessWidget
{
  final Color? hexContainerColor;
  final String? image;
  const HexagonWithImage({super.key,required this.hexContainerColor,required this.image});

  @override
  Widget build(BuildContext context) {
    double hexContainerWidth=45.w;
    double hexContainerHeight=45.h;
    return  Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CustomPaint(
          size: Size(hexContainerWidth,(hexContainerHeight)),
          painter: RPSCustomPainter(color: hexContainerColor),
        ),
        Image.asset(image!,width: 20.r,height:20.r,)
        // Icon(Icons.height,size: 15.sp,)
      ],
    );
  }

}