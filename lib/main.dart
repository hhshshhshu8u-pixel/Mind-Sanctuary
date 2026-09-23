import 'package:flutter/material.dart';
import 'features/navigation/presentation/screens/main_layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MindSanctuaryApp());
}

class MindSanctuaryApp extends StatelessWidget {
  const MindSanctuaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ملاذ العقول',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF0A0A0A),
          primary: Color(0xFFD4AF37),
          secondary: Color(0xFF8B6FA8),
          onSurface: Color(0xFFE8E0D2),
          onPrimary: Color(0xFF0A0A0A),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
        ),
        cardTheme: const CardThemeData(
          color: Color(0xFF171310),
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
        ),
        fontFamily: 'NotoNaskhArabic',
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xFFE8DCC8), fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.w700),
          titleLarge: TextStyle(color: Color(0xFFE8DCC8), fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(color: Color(0xFFC9C0B3)),
          bodyMedium: TextStyle(color: Color(0xFF9F978D)),
        ),
      ),
      home: const MainLayout(),
    );
  }
}
