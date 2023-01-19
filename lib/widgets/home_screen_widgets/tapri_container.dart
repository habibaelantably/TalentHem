
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tapri/widgets/home_screen_widgets/tapri_precentage_container.dart';

import '../../models/TapriListModel.dart';
import '../../utilities/colors/colors.dart';
import '../regular_text.dart';
import 'hexagon_with_Image.dart';

class TapriContainer extends StatelessWidget
{
  final TapriListModel? tapriListModel;

  const TapriContainer({super.key,
    required this.tapriListModel,
   });

  @override
  Widget build(BuildContext context) {
   return Container(
     height: 110.h,
     width: 190.w,
     decoration: BoxDecoration(
       color: AppColors.white,
       borderRadius: BorderRadius.circular(15.r),
     ),
     child: Padding(
       padding: EdgeInsets.all(12.r),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
                HexagonWithImage(
                   hexContainerColor: tapriListModel!.hexContainerColor,
                   image: tapriListModel!.containerImage),
               RegularText(
                 text: tapriListModel!.coinName!,
                 color: AppColors.greyOfText,
                 fontSize: 10.sp,
               ),
               SizedBox(
                 width: 5.w,
               ),
               TapriPercentageContainer(
                   percentage: '+${tapriListModel!.percentage}%',
                   firstColor: tapriListModel!.firstColor,
                   secondColor: tapriListModel!.secondColor)
             ],
           ),
           SizedBox(
             height: 10.h,
           ),
           RegularText(
             text: '\$${tapriListModel!.dollars}',
             color: AppColors.dollarColor,
             fontSize: 15.sp,
             fontWeight: FontWeight.w600,
           ),
           SizedBox(
             height: 10.h,
           ),
           RegularText(
             text: tapriListModel!.coinNameAbbreviation!,
             fontSize: 10.sp,
             color: AppColors.greyOfText,
           )
         ],
       ),
     ),
   );
  }

}

