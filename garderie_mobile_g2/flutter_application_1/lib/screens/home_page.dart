import 'package:flutter/material.dart';
import '../data/menus_data.dart';
import '../models/menu.dart';
import '../utils/snackbar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------- AppBar ----------
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          // Bouton Recherche → Snackbar
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
            onPressed: () => showMessage(context, 'Rechercher un menu'),
          ),
          // Bouton Notifications → Snackbar
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () => showMessage(context, 'Aucune notification'),
          ),
        ],
      ),

      // ---------- Drawer ----------
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text(
                'Ma Garderie',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // Entrée « Accueil »
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                Navigator.of(context).pop(); // ferme le Drawer
                showMessage(context, 'Accueil sélectionné');
              },
            ),
            // Entrée « Menus »
            ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: const Text('Menus'),
              onTap: () {
                Navigator.of(context).pop(); // ferme le Drawer
                showMessage(context, 'Menus sélectionnés');
              },
            ),
            // Entrée « À propos »
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('À propos'),
              onTap: () {
                Navigator.of(context).pop(); // ferme le Drawer
                showMessage(context, 'À propos sélectionné');
              },
            ),
          ],
        ),
      ),

      // ---------- Floating Action Button ----------
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessage(context, 'Ajouter un menu'),
        child: const Icon(Icons.add),
      ),

      // ---------- Corps de la page ----------
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titre de la section
            const Text(
              'Menus du jour',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Liste des menus du jour (données statiques)
            Expanded(
              child: ListView.builder(
                itemCount: menusDuJour.length,
                // Chaque élément est affiché dans une Card
                itemBuilder: (context, index) {
                  final Menu menu = menusDuJour[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      // Icône (emoji) du menu
                      leading: Text(
                        menu.icone,
                        style: const TextStyle(fontSize: 32),
                      ),
                      // Titre du menu
                      title: Text(
                        menu.titre,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // Description du menu
                      subtitle: Text(menu.description),
                      // Clic sur un menu → Snackbar avec le titre du menu
                      onTap: () => showMessage(context, menu.titre),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}