
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilities/colors/colors.dart';
import '../regular_text.dart';

class WalletContainer extends StatelessWidget{
   const WalletContainer({super.key,required this.totalWalletBalance,required this.weeklyProfit});

  final double? totalWalletBalance;
  final double? weeklyProfit;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:150.w,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.aChainColor.withOpacity(0.9),
                AppColors.aChainColor.withOpacity(0.6),
                AppColors.aChainColor.withOpacity(0.3),

              ]
          ),
        ),
      child: Padding(
        padding:  EdgeInsets.all(10.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RegularText(text: 'Total Wallet Balance',fontSize: 8.0.sp,color: AppColors.white,),
                const Spacer(flex: 1,),
                DropdownButton<String>(
                    dropdownColor:  AppColors.hiTextColor,
                    style: TextStyle(fontSize: 10.sp,),
                    iconDisabledColor: AppColors.white,
                    iconEnabledColor: AppColors.white,
                    value:'USD',
                    items: [
                      DropdownMenuItem(
                          value: 'USD',
                          onTap: () {},
                          child: RegularText(text: 'USD',color: Colors.white,fontSize: 10.sp,)
                      ),
                      DropdownMenuItem(
                          value: 'Rupe',
                          onTap: () {},
                          child: RegularText(text: 'Rupe',color: Colors.white,fontSize: 10.sp,)
                      ),
                    ],
                    onChanged: (value) {}),
              ],
            ),
            SizedBox(height: 7.h,),
            RegularText(text: '\$$totalWalletBalance',
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              fontFamilyType: FontFamilyType.poppins,),
            SizedBox(height: 10.h,),
            RegularText(text: 'Weekly profit',color: Colors.white,fontSize: 10.sp,),
            SizedBox(height: 5.h,),
            Row(
              children: [
                RegularText(text: '\$$weeklyProfit'.toString(),
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  fontFamilyType: FontFamilyType.poppins,),
                const Spacer(flex: 1,),
                const Icon(Icons.arrow_drop_up_outlined,color: AppColors.white,),
                RegularText(text: '+15%',color: Colors.white,fontSize: 10.sp,),

              ],
            )



          ],
        ),
      ),

    );
  }

}