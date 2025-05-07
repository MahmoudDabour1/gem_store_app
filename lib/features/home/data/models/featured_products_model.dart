import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'featured_products_model.g.dart';

@JsonSerializable()
class FeaturedProductsModel extends Equatable {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "category")
  final Category? category;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "creationAt")
  final DateTime? creationAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  const FeaturedProductsModel({
    this.id,
    this.title,
    this.slug,
    this.price,
    this.description,
    this.category,
    this.images,
    this.creationAt,
    this.updatedAt,
  });

  factory FeaturedProductsModel.fromJson(Map<String, dynamic> json) =>
      _$FeaturedProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturedProductsModelToJson(this);

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
class Category extends Equatable {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "creationAt")
  final DateTime? creationAt;
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  const Category({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.creationAt,
    this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        image,
        creationAt,
        updatedAt,
      ];
}
