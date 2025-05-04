class Product {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String? imageUrl;
  final String? description;
  final List<String>? colors;
  final String? category;
  final double? rating;
  final int? reviewCount;
  final bool? isFavorite;
  final int? discountPercentage;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    this.imageUrl,
    this.description,
    this.colors,
    this.category,
    this.rating,
    this.reviewCount,
    this.isFavorite = false,
    this.discountPercentage,
  });

  Product copyWith({
    String? id,
    String? name,
    double? price,
    double? originalPrice,
    String? imageUrl,
    String? description,
    List<String>? colors,
    String? category,
    double? rating,
    int? reviewCount,
    bool? isFavorite,
    int? discountPercentage,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      colors: colors ?? this.colors,
      category: category ?? this.category,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      isFavorite: isFavorite ?? this.isFavorite,
      discountPercentage: discountPercentage ?? this.discountPercentage,
    );
  }

  @override
  String toString() {
    return 'Product{id: $id, name: $name, price: $price}';
  }
}
