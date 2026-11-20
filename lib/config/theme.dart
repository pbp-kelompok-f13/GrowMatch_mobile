import 'package:flutter/material.dart';

/// Color tokens aligned with GrowMatch Web (`static/css/defaults.css`).
class GrowMatchColors {
  GrowMatchColors._();

  // Primary (Deep Forest Green)
  static const Color primary10 = Color(0xFFE8F0EB);
  static const Color primary20 = Color(0xFFCFDFD5);
  static const Color primary30 = Color(0xFFA8C5B2);
  static const Color primary40 = Color(0xFF79A087);
  static const Color primary50 = Color(0xFF3F7255);
  static const Color primaryBase = Color(0xFF06351B);
  static const Color primary60 = Color(0xFF052F18);
  static const Color primary70 = Color(0xFF042815);
  static const Color primary80 = Color(0xFF032111);

  // Secondary (Leaf / Meadow Green)
  static const Color secondary10 = Color(0xFFF1F6EC);
  static const Color secondary20 = Color(0xFFE3EDD9);
  static const Color secondary30 = Color(0xFFCBDDBA);
  static const Color secondary40 = Color(0xFFAAC78E);
  static const Color secondary50 = Color(0xFF83AA60);
  static const Color secondaryBase = Color(0xFF5D8B3A);
  static const Color secondary60 = Color(0xFF527B33);
  static const Color secondary70 = Color(0xFF45682B);

  // Accent (Botanical Magenta)
  static const Color accent10 = Color(0xFFFFF0F7);
  static const Color accent20 = Color(0xFFFFD9EA);
  static const Color accentBase = Color(0xFFFF0E86);
  static const Color accent70 = Color(0xFFC80068);
  static const Color accent80 = Color(0xFFA70057);

  // Semantic aliases matching web CSS variables
  static const Color paper = Color(0xFFFFFFF5);
  static const Color ink = primaryBase;
  static const Color tint = secondary30;
  static const Color line = primary30;
}

class GrowMatchTheme {
  GrowMatchTheme._();

  static const double cardRadius = 20;
  static const double inputRadius = 14;
  static const double pillRadius = 999;

  static ThemeData get light {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: GrowMatchColors.primaryBase,
      onPrimary: GrowMatchColors.paper,
      primaryContainer: GrowMatchColors.primary10,
      onPrimaryContainer: GrowMatchColors.primaryBase,
      secondary: GrowMatchColors.secondaryBase,
      onSecondary: GrowMatchColors.paper,
      secondaryContainer: GrowMatchColors.secondary20,
      onSecondaryContainer: GrowMatchColors.primaryBase,
      tertiary: GrowMatchColors.accentBase,
      onTertiary: Colors.white,
      tertiaryContainer: GrowMatchColors.accent10,
      onTertiaryContainer: GrowMatchColors.accent80,
      error: GrowMatchColors.accent80,
      onError: Colors.white,
      errorContainer: GrowMatchColors.accent10,
      onErrorContainer: GrowMatchColors.accent80,
      surface: GrowMatchColors.paper,
      onSurface: GrowMatchColors.ink,
      surfaceContainerHighest: GrowMatchColors.primary10,
      onSurfaceVariant: GrowMatchColors.primary50,
      outline: GrowMatchColors.line,
      outlineVariant: GrowMatchColors.primary20,
      shadow: Color(0x1406351B),
      scrim: Color(0x6606351B),
      inverseSurface: GrowMatchColors.primaryBase,
      onInverseSurface: GrowMatchColors.paper,
      inversePrimary: GrowMatchColors.secondary40,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GrowMatchColors.paper,
      appBarTheme: const AppBarTheme(
        backgroundColor: GrowMatchColors.paper,
        foregroundColor: GrowMatchColors.ink,
        elevation: 0,
        scrolledUnderElevation: 1,
        surfaceTintColor: GrowMatchColors.primary10,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: GrowMatchColors.ink,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.3,
        ),
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
          side: const BorderSide(color: GrowMatchColors.primary20),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: GrowMatchColors.primaryBase,
          foregroundColor: GrowMatchColors.paper,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(pillRadius),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: GrowMatchColors.secondaryBase,
          foregroundColor: GrowMatchColors.paper,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(pillRadius),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: GrowMatchColors.primaryBase,
          side: const BorderSide(color: GrowMatchColors.line),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(pillRadius),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(inputRadius),
          borderSide: const BorderSide(color: GrowMatchColors.primary20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(inputRadius),
          borderSide: const BorderSide(color: GrowMatchColors.primary20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(inputRadius),
          borderSide: const BorderSide(
            color: GrowMatchColors.secondaryBase,
            width: 1.8,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(inputRadius),
          borderSide: const BorderSide(color: GrowMatchColors.accent80),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: GrowMatchColors.secondary20,
        surfaceTintColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return TextStyle(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            color: isSelected
                ? GrowMatchColors.primaryBase
                : GrowMatchColors.primary50,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return IconThemeData(
            color: isSelected
                ? GrowMatchColors.primaryBase
                : GrowMatchColors.primary40,
          );
        }),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: GrowMatchColors.secondary10,
        selectedColor: GrowMatchColors.secondary20,
        side: const BorderSide(color: GrowMatchColors.primary20),
        labelStyle: const TextStyle(
          color: GrowMatchColors.primaryBase,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(pillRadius),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: GrowMatchColors.primary20,
        thickness: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: GrowMatchColors.primaryBase,
        contentTextStyle: const TextStyle(color: GrowMatchColors.paper),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
