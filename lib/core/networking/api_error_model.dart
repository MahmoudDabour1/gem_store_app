import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final bool? success;
  final String? message;
  @JsonKey(name: "status")
  final int? statusCode;
  @JsonKey(name: "details")
  final List<String?>? errorsDetails;

  ApiErrorModel({
     this.success,
    this.message,
    this.statusCode,
    this.errorsDetails,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
