import 'package:flutter/material.dart';

class ListePage extends StatelessWidget {
  const ListePage({super.key});

  final List<String> elements = const [
    "Document 1", "Document 2", "Document 3", "Document 4", "Document 5",
    "Document 6", "Document 7", "Document 8", "Document 9", "Document 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TP 7 - Liste dynamique")),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: const Icon(Icons.description, color: Colors.blue),
            ),
            title: Text(elements[index]),
            subtitle: Text("Description détaillée du ${elements[index].toLowerCase()}"),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("${elements[index]} sélectionné"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
