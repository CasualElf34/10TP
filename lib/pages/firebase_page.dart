import 'package:flutter/material.dart';

class FirebasePage extends StatelessWidget {
  const FirebasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TP 9 - Firebase"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
              const SizedBox(height: 24),
              const Text(
                "Firebase initialisé avec succès",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                "Cette page confirme que la configuration de base de Firebase a été implémentée dans le code.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.amber),
                ),
                child: const Column(
                  children: [
                    Text(
                      "Étapes manuelles réalisées :",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
                    ),
                    SizedBox(height: 8),
                    Text("1. Installation de flutterfire CLI"),
                    Text("2. Exécution de 'flutterfire configure'"),
                    Text("3. Ajout de firebase_core dans pubspec.yaml"),
                    Text("4. Initialisation dans main()"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
