class StatusCode {
  static const int success = 200;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int notFound = 404;
  static const int internalServerError = 500;
  static const int unknown = -1;

  static String getMessage(int code) {
    switch (code) {
      case success:
        return 'Request succeeded';
      case badRequest:
        return 'Bad request';
      case unauthorized:
        return 'Unauthorized access';
      case notFound:
        return 'Resource not found';
      case internalServerError:
        return 'Internal server error';
      default:
        return 'Unknown error';
    }
  }
}
