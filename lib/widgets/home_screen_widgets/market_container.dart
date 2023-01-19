import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tapri/models/marketListModel.dart';

import '../../utilities/colors/colors.dart';
import '../regular_text.dart';
import 'hexagon_with_Image.dart';

class MarketContainer extends StatelessWidget
{
  final MarketListModel? marketListModel;



  const MarketContainer({super.key,
    required this.marketListModel,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding:  EdgeInsets.all(10.r),
        child: Row(
          children: [
            HexagonWithImage(hexContainerColor:marketListModel!.hexContainerColor,
                image: marketListModel!.containerImage),
            SizedBox(width: 3.w,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RegularText(text: marketListModel!.marketName!,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w200,
                        fontFamilyType: FontFamilyType.poppins,
                        color: AppColors.hiTextColor,),
                      RegularText(text: '\$${marketListModel!.marketDollars}',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w200,
                        fontFamilyType: FontFamilyType.poppins,
                        color: AppColors.dollarColor,),

                    ],),
                  SizedBox(height: 5.h,),
                  Row(
                    children: [
                      RegularText(text: marketListModel!.marketNameAbbreviation!,
                        fontSize: 8.sp,
                        fontFamilyType: FontFamilyType.poppins,
                        color: AppColors.greyOfText,),
                      const Spacer(flex: 1,),
                      const Icon(Icons.keyboard_arrow_down_outlined,color:AppColors.percentageColor,),
                      RegularText(text: '${marketListModel!.percentage}%',
                        fontSize: 8.sp,
                        fontFamilyType: FontFamilyType.poppins,
                        color:AppColors.percentageColor,),

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}