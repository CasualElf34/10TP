import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini-App Flutter (TP 10)"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _HeaderSection(),
            const SizedBox(height: 24),
            _buildNavCard(
              context,
              title: "TP 3: Layouts",
              subtitle: "Column, Row, Expanded",
              icon: Icons.layers,
              color: Colors.blue,
              route: '/layout',
            ),
            _buildNavCard(
              context,
              title: "TP 4: État & Compteur",
              subtitle: "StatefulWidget & setState",
              icon: Icons.add_circle_outline,
              color: Colors.green,
              route: '/counter',
            ),
            _buildNavCard(
              context,
              title: "TP 5: Formulaire",
              subtitle: "TextField & Validation",
              icon: Icons.edit_note,
              color: Colors.orange,
              route: '/form',
            ),
            _buildNavCard(
              context,
              title: "TP 7: Liste Dynamique",
              subtitle: "ListView.builder",
              icon: Icons.list,
              color: Colors.purple,
              route: '/list',
            ),
            _buildNavCard(
              context,
              title: "TP 8: API REST",
              subtitle: "Consommation via 'http'",
              icon: Icons.cloud_download,
              color: Colors.red,
              route: '/api',
            ),
            _buildNavCard(
              context,
              title: "TP 9: Firebase",
              subtitle: "Initialisation & Config",
              icon: Icons.local_fire_department,
              color: Colors.amber,
              route: '/firebase',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavCard(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon,
      required Color color,
      required String route}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        leading: Icon(icon, color: color, size: 32),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurple.shade300]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(Icons.flutter_dash, size: 40, color: Colors.deepPurple),
          ),
          SizedBox(height: 12),
          Text(
            "Bienvenue dans mes TPs",
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            "Sélectionnez un TP à explorer",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
