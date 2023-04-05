import 'package:chat/auth/data/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSignIn = useState(true);
    final usernameProvider = useTextEditingController();
    final emailProvider = useTextEditingController();
    final passwordProvider = useTextEditingController();
    final confirmPasswordProvider = useTextEditingController();

    Future<void> handlePress() async {
      try {
        if (isSignIn.value) {
          await AuthRepository()
              .signIn(emailProvider.text, passwordProvider.text);
        } else {
          await AuthRepository().signUp(
              usernameProvider.text, emailProvider.text, passwordProvider.text);
        }
        if (context.mounted) context.pushReplacement('/conversations');
      } on AuthException catch (e) {
        final snackBar = SnackBar(
          content: Text(e.message),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(isSignIn.value ? 'Connexion' : 'Inscription'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!isSignIn.value) ...[
              TextField(
                controller: usernameProvider,
                decoration: const InputDecoration(
                  labelText: 'Pseudo',
                ),
              ),
            ],
            const SizedBox(height: 16),
            TextField(
              controller: emailProvider,
              decoration: const InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordProvider,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
              ),
              obscureText: true,
            ),
            if (!isSignIn.value) ...[
              const SizedBox(height: 16),
              TextField(
                controller: confirmPasswordProvider,
                decoration: const InputDecoration(
                  labelText: 'Confirmez votre mot de passe',
                ),
                obscureText: true,
              ),
            ],
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: handlePress,
              child: Text(isSignIn.value ? 'Se connecter' : 'S\'inscrire'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                isSignIn.value = !isSignIn.value;
              },
              child: Text(
                isSignIn.value
                    ? 'Vous n\'avez pas de compte ? Inscrivez-vous.'
                    : 'Vous avez déjà un compte ? Connectez-vous.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
