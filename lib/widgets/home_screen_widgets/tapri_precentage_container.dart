
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/colors/colors.dart';
import '../regular_text.dart';

class TapriPercentageContainer extends StatelessWidget
{
  final String? percentage;
  final Color? firstColor,secondColor;
  const TapriPercentageContainer({super.key,required this.percentage,required this.firstColor,required this.secondColor});

  @override
  Widget build(BuildContext context) {
   return  Container(
     width: 60.w,
     height: 20.h,
     decoration: BoxDecoration(
       color: AppColors.hiTextColor,
       borderRadius: BorderRadius.circular(15.r),
       gradient: LinearGradient(
           begin: Alignment.bottomCenter,
           end: Alignment.topCenter,
           colors: [
            firstColor!,
             secondColor!,
           ]
       ),
     ),
     child: Center(child: RegularText(text: percentage!,fontSize: 10.sp,)),
   );
  }

}