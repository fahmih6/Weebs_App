import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/logic/komiku_chapter_fetch_bloc/komiku_chapter_fetch_bloc.dart';
import 'package:weebs_app/model/settings/settings_model.dart';

import '../../../logic/komik_read_appbar_cubit/komik_read_appbar_cubit.dart';
import '../../../logic/settings_bloc/settings_bloc.dart';

class KomikReadScreenContentAppbar extends StatefulWidget {
  const KomikReadScreenContentAppbar({super.key});

  @override
  State<KomikReadScreenContentAppbar> createState() =>
      _KomikReadScreenContentAppbarState();
}

class _KomikReadScreenContentAppbarState
    extends State<KomikReadScreenContentAppbar> {
  @override
  void initState() {
    super.initState();

    /// Get current chapter param
    final currentChapterParam =
        context.read<KomikuChapterFetchBloc>().state.mapOrNull(
                  completed: (value) =>
                      value.chapterData.firstOrNull?.chapterParam,
                ) ??
            "-";

    /// Init
    context
        .read<KomikReadAppbarCubit>()
        .init(currentChapterParam: currentChapterParam);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KomikReadAppbarCubit, KomikReadAppbarState>(
      builder: (context, state) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: state.shouldShow ? 1 : 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Title and Back Button
                Row(
                  children: [
                    /// Back button
                    IconButton(
                      onPressed: () {
                        context.popRoute();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),

                    /// Title
                    Text(
                      state.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),

                /// Image Mode
                BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, state) {
                    return state.map(
                      state: (value) {
                        final mode = value.settingsData.komikReadImageMode;
                        return IconButton(
                          padding: EdgeInsets.zero,
                          color: Colors.white,
                          tooltip: mode == KomikReadImageMode.fillWidth
                              ? "Fill Width"
                              : mode == KomikReadImageMode.fitHeight
                                  ? "Fit Height"
                                  : "Normal",
                          onPressed: () {
                            /// Keep appbar shown
                            context
                                .read<KomikReadAppbarCubit>()
                                .toggleShowAppbar();

                            /// Toggle Read Mode
                            context.read<SettingsBloc>().switchKomikReadMode();
                          },
                          icon: Icon(
                            mode == KomikReadImageMode.fillWidth
                                ? Icons.width_full
                                : mode == KomikReadImageMode.fitHeight
                                    ? Icons.width_normal
                                    : Icons.fit_screen,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
