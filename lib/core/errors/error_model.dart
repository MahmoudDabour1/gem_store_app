class ErrorModel {
  String errorMessage;
  ErrorModel({required this.errorMessage});
  factory ErrorModel.fromJson(dynamic jsonData) {
    return ErrorModel(
      errorMessage: jsonData['message'],
    );
  }
}
