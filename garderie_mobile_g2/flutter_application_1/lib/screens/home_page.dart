import 'package:flutter/material.dart';
import '../data/menus_data.dart';
import '../models/menu.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),

  
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
          
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {},
            ),
           
            ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: const Text('Menus'),
              onTap: () {},
            ),
         
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('À propos'),
              onTap: () {},
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),


      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            const Text(
              'Menus du jour',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            
            Expanded(
              child: ListView.builder(
                itemCount: menusDuJour.length,

                itemBuilder: (context, index) {
                  final Menu menu = menusDuJour[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                   
                      leading: Text(
                        menu.icone,
                        style: const TextStyle(fontSize: 32),
                      ),
                      
                      title: Text(
                        menu.titre,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                  
                      subtitle: Text(menu.description),
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