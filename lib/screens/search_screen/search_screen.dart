import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weebs_app/routes/route_names.dart';

@RoutePage(name: RouteNames.searchScreen)
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
    );
  }
}
