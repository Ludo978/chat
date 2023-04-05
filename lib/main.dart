import 'package:chat/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'keys.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: url,
    anonKey: key,
  );

  runApp(const ProviderScope(
    child: App(),
  ));
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;
