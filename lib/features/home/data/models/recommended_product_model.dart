import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommended_product_model.g.dart';

@JsonSerializable()
class RecommendedProductModel extends Equatable {
  final int id;
  final String title;
  final String slug;
  final double price;
  final String description;
  final CategoryModel category;
  final List<String> images;
  final DateTime creationAt;
  final DateTime updatedAt;

  const RecommendedProductModel({
    required this.id,
    required this.title,
    required this.slug,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
  });

  factory RecommendedProductModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendedProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedProductModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        slug,
        price,
        description,
        category,
        images,
        creationAt,
        updatedAt,
      ];
}

@JsonSerializable()
class CategoryModel extends Equatable {
  final int id;
  final String name;
  final String slug;
  final String image;
  final DateTime creationAt;
  final DateTime updatedAt;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  @override
  List<Object> get props => [id, name, slug, image, creationAt, updatedAt];
}
