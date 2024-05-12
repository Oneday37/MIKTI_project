import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            SizedBox(width: 10),
            Text("Person Name"),
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {
                print("Anda melakukan panggilan");
              }),
          IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                print("Anda membuka menu tambahan");
              })
        ],
      ),
      body: const Center(child: Text("ISI CHAT")),
      bottomSheet: Container(
        child: Row(
          children: [
            const Icon(Icons.emoji_emotions_outlined),
            const Icon(Icons.attachment_outlined),
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Pesan",
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            )),
            ElevatedButton(
              child: const Icon(Icons.mic),
              onPressed: () {
                print("Anda menekan microphone");
              },
            )
          ],
        ),
      ),
    );
  }
}
