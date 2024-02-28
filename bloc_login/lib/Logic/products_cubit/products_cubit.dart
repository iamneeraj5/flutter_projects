import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/models/topselling.dart';

class ProductsCubit extends Cubit<List<Product>> {
  ProductsCubit() : super([]);
  void showProducts(
      String imagePath, String productName, String desc, String price) {
    final showProduct = Product(
        imagePath: imagePath,
        productName: productName,
        desc: desc,
        price: price);

    emit([...state, showProduct]);
  }
}
