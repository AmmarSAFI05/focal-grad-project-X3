import 'package:flutter/material.dart';
import 'app_fonts.dart';

class AppTextStyles {

  // Inter //

  static TextStyle Inter500(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.med,
      fontFamily: 'Inter'
  );

// Montserrat //

static TextStyle Montserrat300(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.thin,
    fontFamily: 'Montserrat'
);
static TextStyle Montserrat400(double size,Color color) => TextStyle(
  fontSize: size,
  color: color,
  fontWeight: AppFontWeight.normal,
  fontFamily: 'Montserrat'
);
static TextStyle Montserrat500(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.med,
    fontFamily: 'Montserrat'
);
static TextStyle Montserrat600(double size,Color color) => TextStyle(
    fontSize: size,
    color: color,
    fontWeight: AppFontWeight.bold,
    fontFamily: 'Montserrat'
);
static TextStyle Montserrat700(double size,Color color) => TextStyle(
  fontSize: size,
  color: color,
  fontWeight: AppFontWeight.xBold,
  fontFamily: 'Montserrat'
);

// Tajawal //

  static TextStyle Tajawal300(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.thin,
      fontFamily: 'Tajawal'
  );
  static TextStyle Tajawal400(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.normal,
      fontFamily: 'Tajawal'
  );
  static TextStyle Tajawal500(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.med,
      fontFamily: 'Tajawal'
  );
  static TextStyle Tajawal700(double size,Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontWeight: AppFontWeight.xBold,
      fontFamily: 'Tajawal'
  );
}
