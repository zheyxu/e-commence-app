import 'package:e_commence/data/repository/popular_product_repo.dart';
import 'package:e_commence/data/repository/recommended_product_repo.dart';
import 'package:e_commence/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList; //because has _

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = []; // may call many times
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); //ui will known
    } else {}
  }
}