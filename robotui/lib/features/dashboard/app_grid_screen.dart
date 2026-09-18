import 'package:flutter/material.dart';

class AppGridScreen extends StatelessWidget {
  const AppGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> apps = [
      {'icon': Icons.home, 'label': 'Home'},
      {'icon': Icons.bolt, 'label': 'Automations'},
      {'icon': Icons.apps, 'label': 'App Gallery'},
      {'icon': Icons.music_note, 'label': 'Music'},
      {'icon': Icons.notifications, 'label': 'Notifications'},
      {'icon': Icons.settings, 'label': 'Settings'},
    ];

    return Scaffold(
      body: Container(
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
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Nav Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Applications',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 48), // Balance alignment
                  ],
                ),
                const SizedBox(height: 32),
                // App Grid Layout
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: apps.length,
                    itemBuilder: (context, index) {
                      final app = apps[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(app['icon'], color: Colors.white, size: 36),
                            const SizedBox(height: 12),
                            Text(
                              app['label'],
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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