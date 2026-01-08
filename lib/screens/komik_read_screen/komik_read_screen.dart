import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import 'package:weebs_app/logic/komik_chapter_fetch_bloc/komik_chapter_fetch_bloc.dart';
import 'package:weebs_app/widgets/error_widget/error_screen.dart';

import '../../routes/route_names.dart';
import '../../widgets/loading_widget/loading_widget.dart';
import 'widgets/komik_read_screen_content.dart';

@RoutePage(name: RouteNames.komikReadScreen)
class KomikReadScreen extends StatefulWidget {
  final String param;
  final MangaProvider provider;
  const KomikReadScreen({
    super.key,
    @PathParam('param') required this.param,
    this.provider = MangaProvider.komiku,
  });

  @override
  State<KomikReadScreen> createState() => _KomikReadScreenState();
}

class _KomikReadScreenState extends State<KomikReadScreen> {
  @override
  void initState() {
    super.initState();

    /// Fetch the images
    context.read<KomikChapterFetchBloc>().add(
      KomikChapterFetchEvent.started(
        param: widget.param,
        provider: widget.provider,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: BlocBuilder<KomikChapterFetchBloc, KomikChapterFetchState>(
            builder: (context, state) {
              return state.maybeMap(
                /// Loading
                loading: (value) {
                  return const SizedBox(child: Center(child: LoadingWidget()));
                },

                /// Completed
                completed: (value) {
                  /// Success
                  if (value.errorMessage.isEmpty) {
                    return KomikReadScreenContent(
                      chapterList: value.chapterData,
                    );
                  }
                  /// Failed
                  else {
                    return ErrorScreen(
                      errorMesasge: value.errorMessage,
                      onTap: () {
                        context.read<KomikChapterFetchBloc>().add(
                          KomikChapterFetchEvent.started(param: widget.param),
                        );
                      },
                    );
                  }
                },

                /// Error
                orElse: () {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Error Loading Chapters",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<KomikChapterFetchBloc>().add(
                              KomikChapterFetchEvent.started(
                                param: widget.param,
                              ),
                            );
                          },
                          child: const Text(
                            "Reload",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
