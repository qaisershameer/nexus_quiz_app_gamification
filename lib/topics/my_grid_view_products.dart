import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/product_data.dart';
import '../models/product_model.dart';

class MyGridViewProducts extends StatefulWidget {
  const MyGridViewProducts({super.key});

  @override
  State<MyGridViewProducts> createState() => _MyGridViewProductsState();
}

class _MyGridViewProductsState extends State<MyGridViewProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View : BUILDER LAYOUT', style: GoogleFonts.lato(),),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.orangeAccent, Colors.blueAccent],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                          Text(
                            product.title,
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                            maxLines: 2,
                          ),

                          // Product Price
                          Text(
                            '\$${product.price}',
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
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
