import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primaryColor = Color(0xFF007BFF); // Pylon Solar Blue
  static Color secondaryColor = Color(0xFF4CAF50); // Green (success)
  static Color accentColor = Color(0xFFFFA726); // Orange (accent)
  static Color backgroundColor =
      Color(0xFFF7F8FA); // Light Notion-like background

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enable Material 3

    // Defining Material 3 ColorScheme with Pylon Solar-inspired colors
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      primary: primaryColor,
      secondary: secondaryColor,
      background: backgroundColor,
      surface: Colors.white,
      error: Colors.redAccent,
    ),

    // Updated typography with Pylon Solar CRM style
    textTheme: TextTheme(
      displayLarge: GoogleFonts.ibmPlexSans(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      headlineMedium: GoogleFonts.ibmPlexSans(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      bodyLarge: GoogleFonts.ibmPlexSans(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      ),
      bodyMedium: GoogleFonts.ibmPlexSans(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: Colors.black54,
      ),
      labelLarge: GoogleFonts.ibmPlexSans(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),

    // AppBar styling with Material 3 characteristics
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),

    // Elevated Button styling
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor, // Pylon Solar blue
        foregroundColor: Colors.white, // White text
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),

    // TextFormFields styled to match Material 3 aesthetics
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
    ),
  );
}
