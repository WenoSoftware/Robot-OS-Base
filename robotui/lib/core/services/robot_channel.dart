import 'package:flutter/services.dart';

class RobotChannel {
  // Define a unique channel name matching your app bundle ID
  static const MethodChannel _channel = MethodChannel('com.example.floor_robot/hardware');

  // Command the robot to start a cleaning cycle
  static Future<bool> startCleaningMode() async {
    try {
      final bool result = await _channel.invokeMethod('startCleaning');
      return result;
    } on PlatformException catch (e) {
      print("Failed to start cleaning: '${e.message}'.");
      return false;
    }
  }

  // Fetch real-time hardware telemetry (battery, motor status)
  static Future<Map<String, dynamic>> getRobotTelemetry() async {
    try {
      final Map<dynamic, dynamic> result = await _channel.invokeMethod('getTelemetry');
      return Map<String, dynamic>.from(result);
    } on PlatformException catch (e) {
      print("Failed to get telemetry: '${e.message}'.");
      return {};
    }
  }
}