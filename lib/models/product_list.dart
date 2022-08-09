import 'package:flutter/widgets.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;
  bool _showFavoriteOnly = false;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems =>
      [..._items.where((prod) => prod.isFavorite)];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
