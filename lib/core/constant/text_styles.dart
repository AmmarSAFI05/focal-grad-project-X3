import 'package:flutter/material.dart';
import 'app_fonts.dart';

class AppTextStyles {

  // Inter //

  static TextStyle inter500(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.med,
      fontFamily: 'Inter'
  );

// Montserrat //

static TextStyle montserrat300(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.thin,
    fontFamily: 'Montserrat'
);
static TextStyle montserrat400(double size,Color color) => TextStyle(
  fontSize: size,
  color: color,
  fontWeight: AppFontWeight.normal,
  fontFamily: 'Montserrat'
);
static TextStyle montserrat500(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.med,
    fontFamily: 'Montserrat'
);
static TextStyle montserrat600(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.bold,
    fontFamily: 'Montserrat'
);
static TextStyle montserrat700(double size,Color color) => TextStyle(
  fontSize: size,
  color: color,
  fontWeight: AppFontWeight.xBold,
  fontFamily: 'Montserrat'
);

// Tajawal //

  static TextStyle tajawal300(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.thin,
      fontFamily: 'Tajawal'
  );
  static TextStyle tajawal400(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.normal,
      fontFamily: 'Tajawal'
  );
  static TextStyle tajawal500(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.med,
      fontFamily: 'Tajawal'
  );
  static TextStyle tajawal700(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.xBold,
      fontFamily: 'Tajawal'
  );
}
