import 'package:flutter/material.dart';
import 'package:notely/core/util/constants/strings_manger.dart';

class ThemeManger{
  static defaultTheme(){
    return ThemeData(
      fontFamily: StringsManger.defaultFontName,
    );
  }
}