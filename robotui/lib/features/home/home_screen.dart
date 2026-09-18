import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragEnd: (details) {
          if (details.primaryVelocity! < 0) {
            // Trigger transition to App Grid (Screen 2)
            Navigator.pushNamed(context, '/app-grid');
          }
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.8,
              colors: [
                Color(0xFF1E3A8A), // Glowing center blue
                Color(0xFF0F172A), // Dark outer background
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Top Status Bar Area (Battery, Wi-Fi, Time)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12:00 PM', style: TextStyle(color: Colors.white70)),
                      Text('75%', style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
                // Center Prompt
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'How Can I Help?',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Ask me anything...',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                // Bottom Swipe Indicator
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 28),
                      SizedBox(height: 4),
                      Text(
                        'Swipe Up to view all apps.',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}