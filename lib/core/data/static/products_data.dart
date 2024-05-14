import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_images.dart';
import 'package:ptc_test/models/products_model.dart';

List<ProductsModel> productsData = [
  ProductsModel(
      image: AppImages.frashFruits,
      title: 'Frash Fruits\n & Vegetable',
      backgroundColor: AppColors.greenContainer,
      borderColor: AppColors.greenBorderContainer),
  ProductsModel(
      image: AppImages.cookingOil,
      title: 'Cooking Oil\n & Ghee',
      backgroundColor: AppColors.orangeContainer,
      borderColor: AppColors.orangeBorderContainer),
  ProductsModel(
      image: AppImages.meat,
      title: 'Meat & Fish',
      backgroundColor: AppColors.pinkContainer,
      borderColor: AppColors.pinkBorderContainer),
  ProductsModel(
      image: AppImages.bakery,
      title: 'Bakery & Snacks',
      backgroundColor: AppColors.purpleContainer,
      borderColor: AppColors.purpleBorderContainer),
  ProductsModel(
      image: AppImages.eggs,
      title: 'Dairy & Eggs',
      backgroundColor: AppColors.yellowContainer,
      borderColor: AppColors.yellowBorderContainer),
  ProductsModel(
      image: AppImages.beverages,
      title: 'Beverages',
      backgroundColor: AppColors.blueContainer,
      borderColor: AppColors.blueBorderContainer),
];
