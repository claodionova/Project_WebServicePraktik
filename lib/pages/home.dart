import 'package:flutter/material.dart';
import 'history.dart';
import 'shopping_cart.dart';
import 'business.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> names = [
    'Bapakku',
    'Nelayan',
    'Juragan',
    'Peternakan',
    'Ibukku',
    'Sayang',
    'Kamu',
    'Suka',
    'Lotisan',
    'Joko',
    'Kiki',
    'Lina',
    'Mira'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: ClipRRect(
              child: Image.network(
                'https://pbs.twimg.com/media/Fkfzv3LUYAAOLZf?format=jpg&name=large',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C8A66),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingCartPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C8A66),
                      shape: BoxShape.rectangle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusinessPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C8A66),
                      shape: BoxShape.rectangle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
