class EndPoint {
  static const String baseurl = 'https://api.escuelajs.co/api/v1/';
  //static const String signIn = 'login';
  static String getRecommendedProductsByCategory(categryId) {
    return '/categories/$categryId/products';
  }
}

class ApiKeys {
  static const String message = 'message';
}
