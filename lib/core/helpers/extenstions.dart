import 'package:flutter/material.dart';

extension Navigation on BuildContext {

  
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }




  void pop() => Navigator.pop(this);
}
