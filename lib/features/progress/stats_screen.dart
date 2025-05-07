import 'package:flutter/material.dart';
import 'progress_service.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int totalMinutes = 0;

  @override
  void initState() {
    super.initState();
    ProgressService().getTotalMinutes().then((value) {
      setState(() => totalMinutes = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Progress')),
      body: Center(
        child: Text(
          'Total Minutes Meditated: $totalMinutes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}