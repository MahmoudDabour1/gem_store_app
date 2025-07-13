import '../models/product_model.dart';

/// Utility class for sorting operations
class SortingUtils {
  /// Sorts a list of products by price using merge sort algorithm
  /// 
  /// [products] - The list of products to sort
  /// [ascending] - If true, sorts in ascending order (low to high), otherwise descending (high to low)
  /// Returns a new sorted list without modifying the original list
  static List<Product> mergeSortByPrice(List<Product> products, {bool ascending = true}) {
    if (products.length <= 1) {
      return List.from(products);
    }
    
    return _mergeSort(products, 0, products.length - 1, ascending);
  }
  
  /// Internal recursive merge sort implementation
  static List<Product> _mergeSort(List<Product> products, int start, int end, bool ascending) {
    if (start >= end) {
      return [products[start]];
    }
    
    int mid = start + ((end - start) ~/ 2);
    List<Product> left = _mergeSort(products, start, mid, ascending);
    List<Product> right = _mergeSort(products, mid + 1, end, ascending);
    
    return _merge(left, right, ascending);
  }
  
  /// Merges two sorted lists into a single sorted list
  static List<Product> _merge(List<Product> left, List<Product> right, bool ascending) {
    List<Product> result = [];
    int leftIndex = 0;
    int rightIndex = 0;
    
    while (leftIndex < left.length && rightIndex < right.length) {
      if (ascending) {
        if (left[leftIndex].price <= right[rightIndex].price) {
          result.add(left[leftIndex]);
          leftIndex++;
        } else {
          result.add(right[rightIndex]);
          rightIndex++;
        }
      } else {
        if (left[leftIndex].price >= right[rightIndex].price) {
          result.add(left[leftIndex]);
          leftIndex++;
        } else {
          result.add(right[rightIndex]);
          rightIndex++;
        }
      }
    }
    
    // Add remaining elements
    while (leftIndex < left.length) {
      result.add(left[leftIndex]);
      leftIndex++;
    }
    
    while (rightIndex < right.length) {
      result.add(right[rightIndex]);
      rightIndex++;
    }
    
    return result;
  }
  
  /// Sorts a list of products by price using merge sort algorithm and returns the sorted list
  /// This is a convenience method that modifies the original list
  static void sortProductsByPrice(List<Product> products, {bool ascending = true}) {
    List<Product> sortedList = mergeSortByPrice(products, ascending: ascending);
    products.clear();
    products.addAll(sortedList);
  }
}
