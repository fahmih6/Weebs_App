import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMesasge;
  final VoidCallback onTap;
  const ErrorScreen({
    super.key,
    required this.errorMesasge,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Error Icon
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Icon(
                Icons.error_outline_rounded,
                color: Colors.red,
                size: 160,
              ),
            ),

            /// Error Message
            Text(
              errorMesasge,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
