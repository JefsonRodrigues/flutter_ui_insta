import 'package:flutter/material.dart';
import 'package:ui_insta/core/theme/app_theme.dart';
import 'package:ui_insta/widgets/bottom_nav.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      routes: {
        '/': (_) => const BottomNav(),
      },
    ),
  );
}
