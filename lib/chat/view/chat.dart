import 'package:chat/chat/view/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../domain/chat.dart';

class MessageListItem extends StatelessWidget {
  final Message message;
  final String userId;

  const MessageListItem(
      {super.key, required this.message, required this.userId});

  @override
  Widget build(BuildContext context) {
    final isMe = message.senderId != userId;
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                message.content,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              Text(
                DateFormat("HH:mm").format(message.createdAt.toLocal()),
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends HookConsumerWidget {
  final params;

  const ChatScreen({super.key, required this.params});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();
    final scrollController = useScrollController();

    useEffect(() {
      if (scrollController.hasClients) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      }
      return null;
    }, [scrollController]);

    return Scaffold(
        appBar: AppBar(
          title: Text(params['username']),
        ),
        body: SafeArea(
          child: Column(
            children: ref.watch(listenToMessages(params['id'])).when(
                  data: (messages) {
                    final filteredMessages = messages
                        .where((element) =>
                            element!.senderId == params['id'] ||
                            element.receiverId == params['id'])
                        .toList();
                    return [
                      Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: filteredMessages.length,
                          itemBuilder: (context, index) {
                            return MessageListItem(
                                message: filteredMessages[index]!,
                                userId: params['id']);
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextField(
                                  controller: messageController,
                                  decoration: const InputDecoration(
                                    hintText: "Écrire un message",
                                    border: InputBorder.none,
                                  ),
                                  maxLines: null,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () async {
                                final message = messageController.text.trim();
                                if (message.isNotEmpty) {
                                  ref.read(sendMessage(NewMessage(
                                    content: message,
                                    receiverId: params['id'],
                                  )));
                                  messageController.clear();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                  loading: () =>
                      [const Center(child: CircularProgressIndicator())],
                  error: (error, stack) => [const Center(child: Text('Error'))],
                ),
          ),
        ));
  }
}
