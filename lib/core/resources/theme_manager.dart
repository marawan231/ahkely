import 'package:flutter/material.dart';
import 'package:ahkeely/core/resources/custom_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

ThemeData get appTheme => ThemeData(
      scaffoldBackgroundColor: ColorManager.grey,
      splashColor: ColorManager.transparent,
      highlightColor: ColorManager.transparent,
      fontFamily: 'Ubuntu',
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        elevation: 0,
        titleSpacing: 16.sp,
        backgroundColor: ColorManager.black,
        iconTheme: const IconThemeData(color: ColorManager.white),
      ),
      popupMenuTheme: PopupMenuThemeData(
          position: PopupMenuPosition.under,
          elevation: 2,
          color: ColorManager.whiteColor,
          surfaceTintColor: ColorManager.whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
      // App bar background color),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: ColorManager.primary),
      textTheme: const TextTheme(
        labelLarge: TextStyle(color: Color(0xff121318)),
        labelMedium: TextStyle(color: Color(0xff121318)),
        labelSmall: TextStyle(color: Color(0xff121318)),
        bodyLarge: TextStyle(color: Color(0xff121318)),
        bodyMedium: TextStyle(color: Color(0xff121318)),
        bodySmall: TextStyle(color: Color(0xff121318)),
        displayLarge: TextStyle(color: Color(0xff121318)),
        displayMedium: TextStyle(color: Color(0xff121318)),
        displaySmall: TextStyle(color: Color(0xff121318)),
        headlineLarge: TextStyle(color: Color(0xff121318)),
        headlineMedium: TextStyle(color: Color(0xff121318)),
        headlineSmall: TextStyle(color: Color(0xff121318)),
        titleLarge: TextStyle(color: Color(0xff121318)),
        titleMedium: TextStyle(color: Color(0xff121318)),
        titleSmall: TextStyle(color: Color(0xff121318)),
      ),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: getRegularStyle(
              fontSize: 18.sp, color: ColorManager.black.withOpacity(.5)),
          isDense: true,
          // contentPadding: EdgeInsets.symmetric(
          //     vertical: 20.sp, horizontal: AppPadding.pH16),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.primary),
              borderRadius: BorderRadius.circular(16.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.primary),
              borderRadius: BorderRadius.circular(16.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary, width: 1),
              borderRadius: BorderRadius.circular(16.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.error),
              borderRadius: BorderRadius.circular(16.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.error, width: 1),
              borderRadius: BorderRadius.circular(16.r))),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: ColorManager.grey,
        selectedItemColor: ColorManager.primary,
        selectedLabelStyle: getMediumStyle(fontSize: 13.sp),
        unselectedLabelStyle:
            getMediumStyle(fontSize: 13.sp), // Navigation bar background color
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ColorManager.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.r)),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(ColorManager.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(ColorManager.primary)),
      ),
    );

// ThemeData get darkThemeColor => ThemeData.dark(useMaterial3: true).copyWith(
//       scaffoldBackgroundColor: ColorManager.black,
//       hintColor: ColorManager.textGrey,
//       appBarTheme:
//           const AppBarTheme(backgroundColor: ColorManager.blackBackground),
//       // App bar background color),
//       textTheme: const TextTheme(
//         labelLarge: TextStyle(color: ColorManager.white),
//         labelMedium: TextStyle(color: ColorManager.white),
//         labelSmall: TextStyle(color: ColorManager.white),
//         bodyLarge: TextStyle(color: ColorManager.white),
//         bodyMedium: TextStyle(color: ColorManager.white),
//         bodySmall: TextStyle(color: ColorManager.white),
//         displayLarge: TextStyle(color: ColorManager.white),
//         displayMedium: TextStyle(color: ColorManager.white),
//         displaySmall: TextStyle(color: ColorManager.white),
//         headlineLarge: TextStyle(color: ColorManager.white),
//         headlineMedium: TextStyle(color: ColorManager.white),
//         headlineSmall: TextStyle(color: ColorManager.white),
//         titleLarge: TextStyle(color: ColorManager.white),
//         titleMedium: TextStyle(color: ColorManager.white),
//         titleSmall: TextStyle(color: ColorManager.white),
//       ),
//       inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: const Color(0xff353535),
//           isDense: true,
//           contentPadding: EdgeInsets.only(
//               top: AppPadding.pH16,
//               bottom: AppPadding.pH16,
//               left: AppPadding.pH16,
//               right: AppPadding.pH16),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(AppBorderRadius.r16)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(AppBorderRadius.r16)),
//           disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(AppBorderRadius.r16)),
//           errorBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(AppBorderRadius.r16)),
//           focusedErrorBorder: OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(AppBorderRadius.r16))),
//       iconTheme: const IconThemeData(color: ColorManager.white),
//       // Icon color
//       bottomSheetTheme: const BottomSheetThemeData(
//         backgroundColor: ColorManager.buttonColorDark,
//         modalBackgroundColor: ColorManager.buttonColorDark,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//         elevation: 0,
//       ),
//       // //bottom navigation bar
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         elevation: 0,
//         backgroundColor: ColorManager.buttonColorDark,
//         selectedItemColor: ColorManager.grey500,
//         unselectedItemColor: ColorManager.white,
//       ),
//       switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith((Set states) {
//           if (states.contains(MaterialState.selected)) {
//             return ColorManager.primary;
//           }
//           return ColorManager.grey3;
//         }),
//       ),
//       // elevatedButtonTheme: ElevatedButtonThemeData(
//       //   style: ButtonStyle(
//       //       foregroundColor:
//       //           MaterialStateProperty.all<Color>(ColorManager.white),
//       //       backgroundColor:
//       //           MaterialStateProperty.all<Color>(ColorManager.primary)),
//       // ),
//     );
