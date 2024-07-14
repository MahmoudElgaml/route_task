class ProductEntity {
  ProductEntity({
    this.products,
  });

  List<Product>? products;
}

class Product {
  Product(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.images});
  num? id;
  String? title;
  String? description;

  num? price;
  num? discountPercentage;
  num? rating;
  List<String>? images;
}
