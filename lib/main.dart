import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String imageUrl;

  Product(
      {required this.name, required this.description, required this.imageUrl});
}

void main() {
  runApp(ProductListScreen());
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Produk 1',
      description: 'Ini deskripsi untuk produk 1.',
      imageUrl: 'https://unsplash.com/photos/2d4lAQAlbDA/download?force=true',
    ),
    Product(
      name: 'Produk 2',
      description: 'Ini deskripsi untuk produk 2',
      imageUrl: 'https://unsplash.com/photos/2d4lAQAlbDA/download?force=true',
    ),
    Product(
      name: 'Produk 3',
      description: 'Ini deskripsi untuk produk 3.',
      imageUrl: 'https://unsplash.com/photos/2d4lAQAlbDA/download?force=true',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Produk'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implementasi logika pencarian di sini
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (ctx, index) {
            final product = products[index];
            return ListTile(
              leading: Image.network(product.imageUrl),
              title: Text(product.name),
              subtitle: Text(product.description),
            );
          },
        ),
      ),
    );
  }
}
