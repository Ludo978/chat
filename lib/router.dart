import 'package:chat/auth/view/auth_screen.dart';
import 'package:chat/chat/view/chat.dart';
import 'package:chat/common/default_screen.dart';
import 'package:chat/conversations/view/conversations.dart';
import 'package:chat/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

String? path;

final routerProvider = Provider<GoRouter>((ref) {
  // var authRepo = ref.watch(authRepositoryProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final isLoggedIn = supabase.auth.currentUser != null;
      if (isLoggedIn && state.location == '/login' || state.location == '/') {
        return '/conversations';
      } else if (!isLoggedIn && state.location != '/login') {
        return '/login';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (_, __) => const DefaultScreen()),
      GoRoute(
        path: '/login',
        builder: (_, __) => const AuthPage(),
      ),
      GoRoute(
        path: '/conversations',
        builder: (_, __) => const ConversationsScreen(),
      ),
      GoRoute(
        path: '/chat',
        builder: (_, state) {
          Object params = state.extra as Object;
          return ChatScreen(params: params);
        },
      ),
    ],
  );
});
