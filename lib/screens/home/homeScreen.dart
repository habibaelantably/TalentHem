import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tapri/utilities/colors/colors.dart';
import 'package:tapri/widgets/regular_text.dart';

import '../../models/TapriListModel.dart';
import '../../models/marketListModel.dart';
import '../../widgets/home_screen_widgets/market_container.dart';
import '../../widgets/home_screen_widgets/tapri_container.dart';
import '../../widgets/home_screen_widgets/wallet_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TapriListModel> tapriModel=[
    TapriListModel(hexContainerColor: AppColors.ethereumAndChainLinkColor,
        containerImage: 'assets/etherum.png', coinName: 'Ethereum',
        dollars: 61645.89, coinNameAbbreviation: 'ETH',
        firstColor: AppColors.hiTextColor.withOpacity(0.9), secondColor: AppColors.hiTextColor.withOpacity(0.5),
        percentage: 2.45),
    TapriListModel(hexContainerColor: AppColors.bitCoinColor,
        containerImage: 'assets/bitcoin.png', coinName: 'BitCoin',
        dollars: 61645.89, coinNameAbbreviation: 'BTC',
        firstColor: AppColors.pinkColor.withOpacity(0.9), secondColor: AppColors.pinkColor.withOpacity(0.5),
        percentage: 3.79),
    TapriListModel(hexContainerColor: AppColors.aChainColor,
        containerImage: 'assets/etherum.png', coinName: 'Achain',
        dollars: 61645.89, coinNameAbbreviation: 'ACH',
        firstColor: AppColors.hiTextColor.withOpacity(0.9), secondColor: AppColors.hiTextColor.withOpacity(0.5),
        percentage: 8.12),
  ];
  List<MarketListModel> marketModel=[
    const MarketListModel(
        hexContainerColor: AppColors.aChainColor,
        containerImage: 'assets/etherum.png', marketName: 'Achain',
        marketDollars: 15816.21, marketNameAbbreviation: 'ACH',
        percentage: 3.49),
    const MarketListModel(
        hexContainerColor: AppColors.ethereumAndChainLinkColor,
        containerImage: 'assets/chainlink.png', marketName: 'ChainLink',
        marketDollars: 15816.21, marketNameAbbreviation: 'CHN',
        percentage: 3.45),
    const MarketListModel(
        hexContainerColor: AppColors.bitCoinColor,
        containerImage: 'assets/bitcoin.png', marketName: 'Bitcoin',
        marketDollars: 15816.21, marketNameAbbreviation: 'BIT',
        percentage: 3.49),
    const MarketListModel(
        hexContainerColor: AppColors.aChainColor,
        containerImage: 'assets/etherum.png', marketName: 'Achain',
        marketDollars: 15816.21, marketNameAbbreviation: 'ACH',
        percentage: 3.49),
    const MarketListModel(
        hexContainerColor: AppColors.ethereumAndChainLinkColor,
        containerImage: 'assets/chainlink.png', marketName: 'ChainLink',
        marketDollars: 15816.21, marketNameAbbreviation: 'CHN',
        percentage: 3.45),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Padding(
       padding:  EdgeInsets.only(top:8.r,left: 8.r),
       child: RegularText(
        text: 'Hi Alex Smith',
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamilyType: FontFamilyType.poppins,
        color: AppColors.hiTextColor,
    ),
     ),
     SizedBox(
      height: 6.h,
    ),
     Padding(
       padding:  EdgeInsets.only(left: 8.r),
       child: RegularText(
        text: 'Good Morning',
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        fontFamilyType: FontFamilyType.poppins,
        color: Colors.black,
    ),
     ),
     SizedBox(
      height: 25.h,
    ),
     Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.w),
            topRight: Radius.circular(15.w)),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WalletContainer(
              totalWalletBalance: 705876.40,
              weeklyProfit: 705792.60,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                RegularText(
                  text: 'Tapri',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                const Spacer(
                  flex: 1,
                ),
                RegularText(
                  text: 'View All+',
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>TapriContainer(tapriListModel: tapriModel[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 5.w,
                      ),
                  itemCount: tapriModel.length),
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                RegularText(
                  text: 'Market',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                const Spacer(
                  flex: 1,
                ),
                RegularText(
                  text: 'View All+',
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    itemBuilder: (context, index) => MarketContainer(marketListModel: marketModel[index]),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 5.h,
                    ),
                    itemCount: marketModel.length),
              ),
            ),

          ],
        ),
      ),
    )
      ],
    );
  }
}
