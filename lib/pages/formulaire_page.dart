import 'package:flutter/material.dart';

class FormulairePage extends StatefulWidget {
  const FormulairePage({super.key});

  @override
  State<FormulairePage> createState() => _FormulairePageState();
}

class _FormulairePageState extends State<FormulairePage> {
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  String resultat = "";
  String erreur = "";

  void valider() {
    final nom = nomController.text.trim();
    final prenom = prenomController.text.trim();
    setState(() {
      if (nom.isEmpty || prenom.isEmpty) {
        erreur = "Tous les champs sont obligatoires.";
        resultat = "";
      } else {
        erreur = "";
        resultat = "Bonjour $prenom $nom";
      }
    });
  }

  @override
  void dispose() {
    nomController.dispose();
    prenomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TP 5 - Formulaire"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nomController,
              decoration: const InputDecoration(
                labelText: "Nom",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: prenomController,
              decoration: const InputDecoration(
                labelText: "Prénom",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: valider,
              child: const Text("Valider"),
            ),
            const SizedBox(height: 24),
            if (erreur.isNotEmpty)
              Text(erreur, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            if (resultat.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green),
                ),
                child: Text(resultat, style: const TextStyle(fontSize: 20, color: Colors.green)),
              ),
          ],
        ),
      ),
    );
  }
}
