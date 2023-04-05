import 'package:chat/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Check if account still exist, if not logout.
    GoRouter router = ref.watch(routerProvider);

    return MaterialApp.router(
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
