import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'features/timer/timer_controller.dart';
import 'features/timer/timer_screen.dart';
import 'features/music/music_service.dart';

void main() {
  runApp(CalmClockApp());
}

class CalmClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TimerController()),
        Provider(create: (_) => MusicService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CalmClock',
        theme: AppTheme.lightTheme,
        home: TimerScreen(),
      ),
    );
  }
}