import 'package:e_commence/data/repository/popular_product_repo.dart';
import 'package:e_commence/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList; //because has _

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = []; // may call many times
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update(); //ui will known
    } else {}
  }
}
