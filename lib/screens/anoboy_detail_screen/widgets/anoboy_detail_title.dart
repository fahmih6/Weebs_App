import 'package:flutter/material.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';

class AnoboyDetailTitle extends StatelessWidget {
  final AnoboyDetailModel anoboyDetailModel;
  const AnoboyDetailTitle({super.key, required this.anoboyDetailModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Text(
        anoboyDetailModel.name,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
