import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  Future<void> saveSession(int durationMinutes) async {
    final prefs = await SharedPreferences.getInstance();
    final total = prefs.getInt('total_minutes') ?? 0;
    await prefs.setInt('total_minutes', total + durationMinutes);
  }

  Future<int> getTotalMinutes() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('total_minutes') ?? 0;
  }
}