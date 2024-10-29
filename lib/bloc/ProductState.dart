import 'package:flutter_demo/models/product.dart';

abstract class ProductState{}

class ProductInitial extends ProductState{}
class ProductLoading extends ProductState{}
class ProductLoaded extends ProductState{
  final List<Product> products;
  ProductLoaded(this.products);
}
class ProductError extends ProductState{
  final String error;
  ProductError(this.error);
}
