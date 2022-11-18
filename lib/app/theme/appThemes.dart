import 'package:flutter/material.dart';

class AppThemes {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        color: colorScheme.primary,
        elevation: 0,
      ),
      primaryColor: colorScheme.primary,
      canvasColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
 popupMenuTheme:PopupMenuThemeData(color:colorScheme.background,elevation: 5 ,)
     // textTheme: GoogleFonts.emilysCandyTextTheme( )

    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary:  Color(0xFF003954),
    secondary: Color(0xFF241E30),
    background:Colors.white,
    surface: Color(0xFF003954),
    onBackground: Color(0x0DFFFFFF),
    error: Color(0xFFF23005),
    onError: Color(0xFFF23005),
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
       tertiary:Colors.white,


  // primaryColor: Color(0xFF003954),
   // primaryColorLight: Color(0xff396381),
   // primaryColorDark: Color(0xff396381),
   );

  static final ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF003954),//si
    primaryContainer: Color(0xFF003954),
    secondary: Colors.white,
    background: Color(0xff141A31),//si
    surface: Color(0xff1E2746),
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,

  );
}
