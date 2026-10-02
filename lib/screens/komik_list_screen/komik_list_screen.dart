import 'package:auto_route/auto_route.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/global/endpoints.dart';
import 'package:weebs_app/logic/favourites_bloc/favourites_bloc.dart';
import 'package:weebs_app/logic/komik_list_fetch_bloc/komik_list_fetch_bloc.dart';
import 'package:weebs_app/model/komiku/komiku_list_model/komiku_list_model.dart';
import 'package:weebs_app/routes/route_names.dart';
import 'package:weebs_app/enum/manga_provider.dart';
import 'package:weebs_app/screens/komik_list_screen/widgets/komik_list_screen_appbar.dart';
import 'package:weebs_app/screens/komik_list_screen/widgets/komik_list_screen_listview.dart';

import '../../model/komiku/komiku_detail_model/komiku_detail_model.dart';
import '../../widgets/loading_widget/loading_widget.dart';
import 'package:weebs_app/helpers/get_it_helper/get_it_helper.dart';

@RoutePage(name: RouteNames.komikListScreen)
class KomikListScreen extends StatefulWidget {
  final MangaProvider provider;
  const KomikListScreen({super.key, this.provider = MangaProvider.komiku});

  @override
  State<KomikListScreen> createState() => _KomikListScreenState();
}

class _KomikListScreenState extends State<KomikListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<KomikListFetchBloc>()
            ..add(KomikListFetchEvent.started(provider: widget.provider)),
      child: Scaffold(
        body: BlocBuilder<KomikListFetchBloc, KomikListFetchState>(
          builder: (context, state) {
            return state.maybeMap(
              completed: (value) {
                /// If error occurred, then show error message
                if (value.errorMsg != null) {
                  return InkWell(
                    onTap: () {
                      /// Start the komik list fetch.
                      context.read<KomikListFetchBloc>().add(
                        KomikListFetchEvent.started(provider: widget.provider),
                      );
                    },
                    child: Center(
                      child: Text(
                        "${value.errorMsg}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }

                /// Otherwise, show widget
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<KomikListFetchBloc>().add(
                      KomikListFetchEvent.started(provider: widget.provider),
                    );
                  },
                  child: CustomScrollView(
                    primary: true,
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      /// App bar
                      KomikListScreenAppBar(
                        komikuListData: value.recommendationList,
                        provider: widget.provider,
                      ),

                      /// Margin
                      SliverToBoxAdapter(child: SizedBox(height: 16.h)),

                      SliverToBoxAdapter(
                        child: BlocBuilder<FavouritesBloc, FavouritesState>(
                          builder: (context, state) {
                            final list = _getFavouriteList(state);

                            return Visibility(
                              visible: list.isNotEmpty,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: KomikListScreenListView(
                                  title: "Favourites",
                                  tagOrGenre: 'favourites',
                                  provider: widget.provider,
                                  komikuList: KomikuListModel(
                                    data: list
                                        .map(
                                          (e) => KomikuListItemModel(
                                            description: e.synopsis,
                                            detailUrl:
                                                '${Endpoints.baseUrl}${_getEndpoint(widget.provider)}/${e.param}',
                                            latestChapter:
                                                e
                                                    .chapters
                                                    .firstOrNull
                                                    ?.chapter ??
                                                'Unknown',
                                            param: e.param,
                                            thumbnail: e.thumbnail,
                                            title: e.title,
                                            type: e.type,
                                            rating: e.rating,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      /// Recomendation
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: KomikListScreenListView(
                            title: "Latest Manga",
                            komikuList: value.recommendationList,
                            tagOrGenre: "rekomendasi",
                            provider: widget.provider,
                          ),
                        ),
                      ),

                      /// Margin
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: FluidNavBar.nominalHeight + 32.h,
                        ),
                      ),
                    ],
                  ),
                );
              },
              orElse: () {
                return const SizedBox(child: Center(child: LoadingWidget()));
              },
            );
          },
        ),
      ),
    );
  }

  /// Get the correct favourites list based on provider
  List<KomikuDetailModel> _getFavouriteList(FavouritesState state) {
    switch (widget.provider) {
      case MangaProvider.komikcast:
        return state.komikcastList;
      case MangaProvider.voratoon:
        return state.voratoonList;
      case MangaProvider.komiku:
        return state.komikuList;
    }
  }

  /// Get the endpoint string for a provider
  String _getEndpoint(MangaProvider provider) {
    switch (provider) {
      case MangaProvider.komiku:
        return Endpoints.komiku;
      case MangaProvider.komikcast:
        return Endpoints.komikcast;
      case MangaProvider.voratoon:
        return Endpoints.voratoon;
    }
  }
}

@RoutePage(name: RouteNames.komikcastListScreen)
class KomikcastListScreen extends StatelessWidget {
  const KomikcastListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const KomikListScreen(provider: MangaProvider.komikcast);
  }
}

@RoutePage(name: RouteNames.voratoonListScreen)
class VoratoonListScreen extends StatelessWidget {
  const VoratoonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const KomikListScreen(provider: MangaProvider.voratoon);
  }
}

