import 'package:flutter/material.dart';
import 'package:weebs_app/model/anoboy/anoboy_detail_model/anoboy_detail_model.dart';

import '../../../widgets/texts/readmore.dart';

class AnoboyDetailDescription extends StatelessWidget {
  final AnoboyDetailModel anoboyDetailModel;
  const AnoboyDetailDescription({super.key, required this.anoboyDetailModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ReadMoreText(
          anoboyDetailModel.synopsis.isNotEmpty
              ? "${anoboyDetailModel.synopsis} "
              : "No Description",
          textAlign: TextAlign.left,
          trimLines: 2,
          trimMode: TrimMode.line,
          moreStyle: TextStyle(
            color: Theme.of(context).buttonTheme.colorScheme?.primary,
          ),
          lessStyle: TextStyle(
            color: Theme.of(context).buttonTheme.colorScheme?.primary,
          ),
        ),
      ),
    );
  }
}
