import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Management App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeWithDashboardButton(),
    );
  }
}

class HomeWithDashboardButton extends StatelessWidget {
  const HomeWithDashboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginScreen(),
          Positioned(
            bottom: 32,
            right: 32,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const DashboardScreen()),
                );
              },
              icon: const Icon(Icons.dashboard),
              label: const Text('Dashboard'),
            ),
          ),
        ],
      ),
    );
  }
}
