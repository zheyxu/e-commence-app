import 'package:e_commence/utils/colors.dart';
import 'package:e_commence/utils/dimensions.dart';
import 'package:e_commence/widgets/app_icon.dart';
import 'package:e_commence/widgets/big_text.dart';
import 'package:e_commence/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: "Chinese Side",
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "This recipe is all about spice. As I went to put together a traditional tandoori marinade for these chicken kebabs, I paused for a minute and decided to take things in a new direction. I kept the yogurt base, which keeps the meat juicy, as well as the lemon, ginger, garlic, and cumin. But then, instead of mixing in an Indian spice blend, I tried an equal combo of smoked paprika, hot paprika, and cayenne. The resulting kebabs were equally, if not more, delicious than the tandoori chicken I'd originally set out to make. The two paprikas gave a strong smoky and spicy boost to the moist, tender chicken. It just goes to show how even a small change can create something totally and wonderfully new. I’ve recently been cooking my way through some of the older recipes on Simply Recipes and came across this gem—Moroccan spiced grilled chicken breasts. It’s a winner! Boneless skinless chicken breasts are marinated in yogurt mixed with a Moroccan-style spice mix of cumin, paprika, and cinnamon, and then simply grilled. The yogurt helps tenderize the breasts and the marinade brings life to otherwise boring boneless skinless chicken. What I love about this recipe is that with just the barest of preparation, you can have a delicious meal within minutes. The yogurt-based marinade is only mildly acidic, so you can leave the chicken in the marinade all day, while it gently tenderizes the meat while infusing it with the spices. Just put the chicken in the marinade before leaving for work in the morning, come home, heat the grill, chicken is done in less than 10 minutes. Simple. Easy! The recipe is one we adapted from a recipe in the Sacramento Bee years ago. To the original recipe we've added lemon juice to the yogurt and cinnamon to the spice blend. This recipe is all about spice. As I went to put together a traditional tandoori marinade for these chicken kebabs, I paused for a minute and decided to take things in a new direction. I kept the yogurt base, which keeps the meat juicy, as well as the lemon, ginger, garlic, and cumin. But then, instead of mixing in an Indian spice blend, I tried an equal combo of smoked paprika, hot paprika, and cayenne. The resulting kebabs were equally, if not more, delicious than the tandoori chicken I'd originally set out to make. The two paprikas gave a strong smoky and spicy boost to the moist, tender chicken. It just goes to show how even a small change can create something totally and wonderfully new. I’ve recently been cooking my way through some of the older recipes on Simply Recipes and came across this gem—Moroccan spiced grilled chicken breasts. It’s a winner! Boneless skinless chicken breasts are marinated in yogurt mixed with a Moroccan-style spice mix of cumin, paprika, and cinnamon, and then simply grilled. The yogurt helps tenderize the breasts and the marinade brings life to otherwise boring boneless skinless chicken. What I love about this recipe is that with just the barest of preparation, you can have a delicious meal within minutes. The yogurt-based marinade is only mildly acidic, so you can leave the chicken in the marinade all day, while it gently tenderizes the meat while infusing it with the spices. Just put the chicken in the marinade before leaving for work in the morning, come home, heat the grill, chicken is done in less than 10 minutes. Simple. Easy! The recipe is one we adapted from a recipe in the Sacramento Bee years ago. To the original recipe we've added lemon juice to the yogurt and cinnamon to the spice blend.",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize:
            MainAxisSize.min, // no container in Scaffold thus need to use it
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.8 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    size: Dimensions.font15,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
