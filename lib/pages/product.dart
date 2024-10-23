import 'package:flutter/material.dart';
import 'package:appflutter/utilities/fun_collection.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Beatbox Album',
      'price': 'Rp 350.000',
      'sold': '100.000 terjual',
      'image':
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a172b06c-37d8-4cf2-8192-a4a10b756bdb/df8pkh1-70666faf-40ef-4c3f-a294-a85cd8b3c7b9.png/v1/fill/w_1280,h_1280,q_80,strp/nct_dream___beatbox__album_cover__by_seblakvttl_df8pkh1-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcL2ExNzJiMDZjLTM3ZDgtNGNmMi04MTkyLWE0YTEwYjc1NmJkYlwvZGY4cGtoMS03MDY2NmZhZi00MGVmLTRjM2YtYTI5NC1hODVjZDhiM2M3YjkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.x2l67iLllurzsF4E2UzT9OANWRG4kgX6pZCbejs0k1g'
    },
    {
      'name': 'Chewing Gum Album',
      'price': 'Rp 475.000',
      'sold': '150.000 terjual',
      'image':
          'https://img.favpng.com/10/8/20/nct-dream-chewing-gum-nct-127-korean-png-favpng-qGyUpGjf0AwyTTYe2ftRjnXv7_t.jpg'
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true, // Menyesuaikan ukuran GridView
        physics:
            const NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada GridView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          crossAxisSpacing: 10.0, // Spasi horizontal
          mainAxisSpacing: 10.0, // Spasi vertikal
          childAspectRatio:
              0.8, // Menyeimbangkan gambar dan teks agar proporsional
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            imageUrl: products[index]['image'],
            name: products[index]['name'],
            price: products[index]['price'],
            sold: products[index]['sold'],
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String sold;

  const ProductItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.sold,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            10.0), // Membuat card memiliki sudut melengkung
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: AspectRatio(
              aspectRatio: 1.2, // Menyesuaikan rasio gambar
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover, // Gambar akan memenuhi ruang yang tersedia
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow
                      .ellipsis, // Elipsis jika teks terlalu panjang
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  sold,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow
                      .ellipsis, // Elipsis jika teks terlalu panjang
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
