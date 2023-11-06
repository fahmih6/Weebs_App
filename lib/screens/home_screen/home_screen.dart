import 'package:auto_route/auto_route.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/global/assets_constant.dart';
import 'package:weebs_app/routes/app_router.dart';
import 'package:weebs_app/routes/route_names.dart';

@RoutePage(name: RouteNames.homeScreen)
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        KomikListRoute(),
        AnoboyListRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      duration: const Duration(milliseconds: 250),
      lazyLoad: false,
      builder: (context, child) {
        /// Tabs Controller
        final tabsRouter = AutoTabsRouter.of(context);

        /// Widgets
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            body: Row(
              children: [
                /// Navigation Rail for Landscape
                Visibility(
                  visible: MediaQuery.of(context).orientation ==
                      Orientation.landscape,
                  child: NavigationRail(
                    selectedIndex: tabsRouter.activeIndex,
                    onDestinationSelected: (value) {
                      tabsRouter.setActiveIndex(value);
                    },
                    useIndicator: true,
                    destinations: const [
                      NavigationRailDestination(
                        icon: Icon(Icons.menu_book_outlined),
                        label: Text("Komiku"),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.tv_sharp),
                        label: Text("Anoboy"),
                      ),
                    ],
                    elevation: 5,
                    minExtendedWidth: 150,
                    extended: true,
                  ),
                ),

                /// Content
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: child,
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Visibility(
              visible:
                  MediaQuery.of(context).orientation == Orientation.portrait,
              child: FluidNavBar(
                animationFactor: 0.4,
                defaultIndex: tabsRouter.activeIndex,
                onChange: (selectedIndex) {
                  tabsRouter.setActiveIndex(selectedIndex);
                },
                icons: [
                  FluidNavBarIcon(svgPath: AssetsConstant.komikuIcon),
                  FluidNavBarIcon(svgPath: AssetsConstant.anoboyIcon),
                ],
              ),
            ),
            floatingActionButton: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme?.primary,
                foregroundColor:
                    Theme.of(context).buttonTheme.colorScheme?.background,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.search),
              onPressed: () {
                context.pushRoute(const SearchRoute());
              },
            ),
          ),
        );
      },
    );
  }
}
