class ProductEntity {
  String? id;
 List< String>? images;
  String? title;
  String? description;
  String? price;
  String? discountPercentage;
  String? rating;

  ProductEntity({
    this.id,
    this.images,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
  });
}
