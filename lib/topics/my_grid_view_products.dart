import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/product_data.dart';
import '../models/product_model.dart';

class MyGridViewProducts extends StatefulWidget {
  const MyGridViewProducts({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyGridViewProducts> createState() => _MyGridViewProductsState();
}

class _MyGridViewProductsState extends State<MyGridViewProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View Builder Layout',
          style: GoogleFonts.lato(),
        ),
        backgroundColor: Colors.deepPurple.shade200,
        actions: [
          IconButton(
            onPressed: widget.topics,
            icon: const Icon(Icons.ac_unit,size: 35,color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: widget.home,
            icon: const Icon(Icons.home,size: 35,color: Colors.black,
            ),
          ),
          const SizedBox(width: 8,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GRID VIEW BUILDER : used to represent dynamic data load.
            Text(
              'GRID VIEW : BUILDER PRODUCTS',
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                // Product data
                ProductModel product = products[index];

                return Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orangeAccent, Colors.blueAccent],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              product.image,
                              scale: 0.25,
                            ),
                          ),

                          // Product Price
                          Text(
                            '\$${product.price}',
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal.shade800,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        product.title,
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        maxLines: 2,
                      ),

                      // Product Description
                      Expanded(
                        child: Text(
                          product.description,
                          style: GoogleFonts.lato(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // Product Category
                      Text(
                        'Category: ${product.category}',
                        style: GoogleFonts.lato(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),

                      // Product Rating Count
                      Text(
                        'Rating: ${product.rating['rate']} ☆ (${product.rating['count']} reviews)',
                        style: GoogleFonts.lato(
                          fontSize: 10,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
