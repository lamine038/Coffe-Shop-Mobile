import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _darkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 10),

          // ---- Section : Général ----
          const Text(
            "Général",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const Divider(),

          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text("Mode sombre"),
            subtitle: const Text("Active ou désactive le thème sombre"),
            value: _darkMode,
            onChanged: (value) {
              setState(() => _darkMode = value);
            },
          ),

          SwitchListTile(
            secondary: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            subtitle: const Text("Activer les alertes et notifications"),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() => _notificationsEnabled = value);
            },
          ),

          const SizedBox(height: 20),

          // ---- Section : Compte ----
          const Text(
            "Compte",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Mon profil"),
            subtitle: const Text("Voir et modifier vos informations"),
            onTap: () {
              // Navigation vers la page profil
              Navigator.pushNamed(context, '/profile');
            },
          ),

          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text("Changer le mot de passe"),
            onTap: () {
              // Action de changement de mot de passe
            },
          ),

          const SizedBox(height: 20),

          // ---- Section : Aide ----
          const Text(
            "Aide & Support",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("À propos"),
            subtitle: const Text("En savoir plus sur cette application"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Agrilegeey",
                applicationVersion: "2.0.0",
                applicationLegalese: "© 2025 Agrilegeey. Tous droits réservés.",
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              "Déconnexion",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Action de déconnexion
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}
