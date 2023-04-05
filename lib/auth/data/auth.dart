import 'package:chat/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  Future<AuthResponse> signIn(String email, String password) async {
    return supabase.auth.signInWithPassword(email: email, password: password);
  }

  Future<AuthResponse> signUp(
    String username,
    String email,
    String password,
  ) async {
    return supabase.auth.signUp(
      email: email,
      password: password,
      data: {
        'username': username,
      },
    );
  }

  Future<void> signOut() async {
    return supabase.auth.signOut();
  }
}
