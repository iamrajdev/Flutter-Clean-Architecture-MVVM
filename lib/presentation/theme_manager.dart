import 'package:advanced_flutter_mvvm/presentation/color_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/font_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/styles_manager.dart';
import 'package:advanced_flutter_mvvm/presentation/values_manager.dart';
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

    // Text Theme

    //Input decoration theme - Text form field
  );
}