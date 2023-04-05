import 'package:chat/auth/data/auth.dart';
import 'package:chat/conversations/view/conversations_provider.dart';
import 'package:chat/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../domain/conversations.dart';

class ConversationListItem extends StatelessWidget {
  final Conversation conversation;

  const ConversationListItem({super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime createdAt = conversation.createdAt.toLocal();
    if (supabase.auth.currentUser == null) {
      return const SizedBox();
    }
    final username = conversation.receiverId == supabase.auth.currentUser!.id
        ? conversation.senderName
        : conversation.receiverName;
    return ListTile(
        leading: CircleAvatar(
          child: Text(username[0].toUpperCase()),
        ),
        title: Text(username),
        subtitle: Text(conversation.content),
        trailing: Text(
          createdAt.day == now.day
              ? DateFormat("HH:mm").format(createdAt)
              : DateFormat("dd/MM/yyyy").format(createdAt),
        ));
  }
}

class ConversationsScreen extends ConsumerWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversations"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              AuthRepository().signOut();
              context.pushReplacement('/login');
            },
          )
        ],
      ),
      body: ref.watch(conversationsProvider).when(
            data: (conversations) {
              return ListView.builder(
                itemCount: conversations.length,
                itemBuilder: (context, index) {
                  if (conversations[index] == null) {
                    return const SizedBox.shrink();
                  }
                  return GestureDetector(
                    onTap: () {
                      final conv = conversations[index]!;
                      final isSender =
                          conv.senderId == supabase.auth.currentUser!.id;
                      context.push('/chat', extra: {
                        'id': isSender ? conv.receiverId : conv.senderId,
                        'username':
                            isSender ? conv.receiverName : conv.senderName,
                      });
                    },
                    child: ConversationListItem(
                        conversation: conversations[index]!),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => const Center(child: Text('Error')),
          ),
    );
  }
}
