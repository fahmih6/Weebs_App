import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/route_names.dart';

@RoutePage(name: RouteNames.settingsScreen)
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Settings Title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 16),

            /// Komiku Sections
            Text(
              "Komiku",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
