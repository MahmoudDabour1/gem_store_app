import 'package:flutter_test/flutter_test.dart';
import 'package:gem_store_app/core/models/product_model.dart';
import 'package:gem_store_app/core/utils/sorting_utils.dart';

void main() {
  group('SortingUtils - mergeSortByPrice', () {
    test('should sort products by price in ascending order', () {
      // Arrange
      final products = [
        Product(id: '1', name: 'Product 1', price: 99.99),
        Product(id: '2', name: 'Product 2', price: 49.99),
        Product(id: '3', name: 'Product 3', price: 149.99),
        Product(id: '4', name: 'Product 4', price: 29.99),
        Product(id: '5', name: 'Product 5', price: 79.99),
      ];
      
      // Act
      final sortedProducts = SortingUtils.mergeSortByPrice(products, ascending: true);
      
      // Assert
      expect(sortedProducts[0].price, 29.99);
      expect(sortedProducts[1].price, 49.99);
      expect(sortedProducts[2].price, 79.99);
      expect(sortedProducts[3].price, 99.99);
      expect(sortedProducts[4].price, 149.99);
    });
    
    test('should sort products by price in descending order', () {
      // Arrange
      final products = [
        Product(id: '1', name: 'Product 1', price: 99.99),
        Product(id: '2', name: 'Product 2', price: 49.99),
        Product(id: '3', name: 'Product 3', price: 149.99),
        Product(id: '4', name: 'Product 4', price: 29.99),
        Product(id: '5', name: 'Product 5', price: 79.99),
      ];
      
      // Act
      final sortedProducts = SortingUtils.mergeSortByPrice(products, ascending: false);
      
      // Assert
      expect(sortedProducts[0].price, 149.99);
      expect(sortedProducts[1].price, 99.99);
      expect(sortedProducts[2].price, 79.99);
      expect(sortedProducts[3].price, 49.99);
      expect(sortedProducts[4].price, 29.99);
    });
    
    test('should handle empty list', () {
      // Arrange
      final products = <Product>[];
      
      // Act
      final sortedProducts = SortingUtils.mergeSortByPrice(products);
      
      // Assert
      expect(sortedProducts, isEmpty);
    });
    
    test('should handle list with single product', () {
      // Arrange
      final products = [Product(id: '1', name: 'Product 1', price: 99.99)];
      
      // Act
      final sortedProducts = SortingUtils.mergeSortByPrice(products);
      
      // Assert
      expect(sortedProducts.length, 1);
      expect(sortedProducts[0].price, 99.99);
    });
    
    test('should handle list with duplicate prices', () {
      // Arrange
      final products = [
        Product(id: '1', name: 'Product 1', price: 99.99),
        Product(id: '2', name: 'Product 2', price: 49.99),
        Product(id: '3', name: 'Product 3', price: 99.99),
        Product(id: '4', name: 'Product 4', price: 49.99),
      ];
      
      // Act
      final sortedProducts = SortingUtils.mergeSortByPrice(products, ascending: true);
      
      // Assert
      expect(sortedProducts[0].price, 49.99);
      expect(sortedProducts[1].price, 49.99);
      expect(sortedProducts[2].price, 99.99);
      expect(sortedProducts[3].price, 99.99);
    });
  });
  
  group('SortingUtils - sortProductsByPrice', () {
    test('should modify original list and sort in ascending order', () {
      // Arrange
      final products = [
        Product(id: '1', name: 'Product 1', price: 99.99),
        Product(id: '2', name: 'Product 2', price: 49.99),
        Product(id: '3', name: 'Product 3', price: 149.99),
      ];
      
      // Act
      SortingUtils.sortProductsByPrice(products, ascending: true);
      
      // Assert
      expect(products[0].price, 49.99);
      expect(products[1].price, 99.99);
      expect(products[2].price, 149.99);
    });
    
    test('should modify original list and sort in descending order', () {
      // Arrange
      final products = [
        Product(id: '1', name: 'Product 1', price: 99.99),
        Product(id: '2', name: 'Product 2', price: 49.99),
        Product(id: '3', name: 'Product 3', price: 149.99),
      ];
      
      // Act
      SortingUtils.sortProductsByPrice(products, ascending: false);
      
      // Assert
      expect(products[0].price, 149.99);
      expect(products[1].price, 99.99);
      expect(products[2].price, 49.99);
    });
  });
}
