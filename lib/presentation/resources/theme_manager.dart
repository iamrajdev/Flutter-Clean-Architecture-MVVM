import 'package:advanced_flutter_mvvm/presentation/resources/color_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/resources/font_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/resources/styles_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // accentColor: ColorManager.grey, //Deprecated

    //Card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),

    //App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)),

    //Button Theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),

    //Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: ColorManager.white),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),

    // Text Theme
    textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            color: ColorManager.darkGray, fontSize: FontSize.s16),
        subtitle2: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),
        caption: getRegularStyle(color: ColorManager.grey1),
        bodyText1: getRegularStyle(color: ColorManager.grey)),

    //Input decoration theme - Text form field
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediumStyle(color: ColorManager.darkGray),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
