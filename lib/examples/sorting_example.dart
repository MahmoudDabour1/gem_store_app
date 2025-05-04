import '../core/models/product_model.dart';
import '../core/utils/sorting_utils.dart';

/// Example usage of the SortingUtils class
class SortingExample {
  /// Demonstrates how to use the merge sort algorithm to sort products by price
  static void demonstrateMergeSort() {
    // Create a list of sample products
    final products = [
      Product(id: '1', name: 'T-Shirt', price: 29.99, category: 'T-Shirts'),
      Product(id: '2', name: 'Jeans', price: 59.99, category: 'Pants'),
      Product(id: '3', name: 'Hoodie', price: 49.99, category: 'Jackets'),
      Product(id: '4', name: 'Sneakers', price: 89.99, category: 'Shoes'),
      Product(id: '5', name: 'Hat', price: 19.99, category: 'Accessories'),
    ];
    
    print('Original product list:');
    for (var product in products) {
      print('${product.name}: \$${product.price}');
    }
    
    // Sort products by price in ascending order (low to high)
    final ascendingProducts = SortingUtils.mergeSortByPrice(products, ascending: true);
    
    print('\nProducts sorted by price (low to high):');
    for (var product in ascendingProducts) {
      print('${product.name}: \$${product.price}');
    }
    
    // Sort products by price in descending order (high to low)
    final descendingProducts = SortingUtils.mergeSortByPrice(products, ascending: false);
    
    print('\nProducts sorted by price (high to low):');
    for (var product in descendingProducts) {
      print('${product.name}: \$${product.price}');
    }
    
    // Alternatively, modify the original list directly
    print('\nModifying original list:');
    SortingUtils.sortProductsByPrice(products, ascending: false);
    
    print('Original list after sorting (high to low):');
    for (var product in products) {
      print('${product.name}: \$${product.price}');
    }
  }
}
