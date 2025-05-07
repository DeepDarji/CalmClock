import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/constants.dart';
import '../../core/utils.dart';
import 'timer_controller.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final timer = Provider.of<TimerController>(context);

    return Scaffold(
      appBar: AppBar(title: Text('CalmClock')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            formatTime(timer.remainingSeconds),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            children: Constants.timerOptions.map((min) {
              return ElevatedButton(
                onPressed: () => timer.startTimer(min),
                child: Text("$min min"),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          if (timer.isRunning)
            ElevatedButton(
              onPressed: timer.stopTimer,
              child: Text("Stop"),
            )
        ],
      ),
    );
  }
}