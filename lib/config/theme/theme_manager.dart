import 'package:flutter/material.dart';
import 'package:notely/core/util/constants/string_manger.dart';

class ThemeManger{
  static defaultTheme(){
    return ThemeData(
      fontFamily: StringManger.defaultFontName,
    );
  }
}