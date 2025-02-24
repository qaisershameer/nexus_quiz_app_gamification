class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Map<String, dynamic> rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}
