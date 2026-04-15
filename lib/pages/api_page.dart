import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  List posts = [];
  bool loading = true;
  String erreur = "";

  @override
  void initState() {
    super.initState();
    chargerPosts();
  }

  Future<void> chargerPosts() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'User-Agent': 'FlutterApp/1.0',
        },
      );
      if (response.statusCode == 200) {
        setState(() {
          posts = jsonDecode(response.body);
          loading = false;
        });
      } else {
        setState(() {
          erreur = "Erreur serveur : ${response.statusCode}";
          loading = false;
        });
      }
    } catch (e) {
      setState(() {
        erreur = "Erreur réseau : $e";
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TP 8 - API REST"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                loading = true;
                erreur = "";
              });
              chargerPosts();
            },
          )
        ],
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : erreur.isNotEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 48, color: Colors.red),
                      const SizedBox(height: 16),
                      Text(erreur, textAlign: TextAlign.center),
                      const SizedBox(height: 16),
                      ElevatedButton(onPressed: chargerPosts, child: const Text("Réessayer")),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: ListTile(
                        leading: CircleAvatar(child: Text("${posts[index]['id']}")),
                        title: Text(
                          posts[index]['title'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          posts[index]['body'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        isThreeLine: true,
                      ),
                    );
                  },
                ),
    );
  }
}
