import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tapri/theme/app_theme.dart';

var languages = ['English', 'Hindi'];

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _language = 'English';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Text(
            'language'.tr,
            style: TextStyle(
              fontSize: 13.sp,
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Container(
              padding: EdgeInsets.fromLTRB(8.r, 5.r, 5.r, 5.r),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.isLightTheme.value
                    ? AppTheme.textFieldsBGLight
                    : AppTheme.textFieldsBG,
                border: Border.all(
                    color: AppTheme.isLightTheme.value
                        ? AppTheme.borderLight
                        : AppTheme.borderDark),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Obx(
                () => DropdownButton<String>(
                  underline: const SizedBox(),
                  dropdownColor: AppTheme.isLightTheme.value
                      ? Colors.white
                      : AppTheme.textFieldsBG,
                  value: _language,
                  items: languages.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _language = newValue!;
                    });
                    switch (languages.indexOf(newValue!)) {
                      case 0:
                        Get.updateLocale(const Locale('en', 'US'));
                        break;
                      case 1:
                        Get.updateLocale(const Locale('hi', 'IN'));
                        break;
                    }
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Obx(
                () => Icon(
                  AppTheme.isLightTheme.value
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),
              ),
              SizedBox(width: 8.w),
              Obx(
                () => Text(
                  '${AppTheme.isLightTheme.value ? 'light'.tr : 'dark'.tr}' +
                      ' ' +
                      'theme'.tr,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Spacer(),
              ObxValue(
                (data) => Switch(
                  focusColor: AppTheme.primaryColor,
                  activeColor: AppTheme.primaryColor,
                  value: AppTheme.isLightTheme.value,
                  onChanged: (val) {
                    AppTheme.isLightTheme.value = val;
                    Get.changeThemeMode(
                      AppTheme.isLightTheme.value
                          ? ThemeMode.light
                          : ThemeMode.dark,
                    );
                    AppTheme.saveThemeStatus();
                  },
                ),
                false.obs,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
