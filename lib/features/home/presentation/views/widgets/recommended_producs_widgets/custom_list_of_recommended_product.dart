import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_state.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/list_of_shimmer_recommended_products.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import 'custom_recommended_product.dart';

class CustomListOfRecommendedProduct extends StatelessWidget {
  const CustomListOfRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: 25.ph,
          child: Row(
            children: [
              Text(
                AppStrings.recommended,
                style: AppTextStyles.font20BlackRegular,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  AppStrings.showAll,
                  style: AppTextStyles.font13GreyMedium,
                ),
              ),
            ],
          ),
        ),
        20.vs,
        SizedBox(
          height: 66.h,
          child: BlocProvider(
            create: (context) =>
                HomeCubit(sl(), sl())..getRecommendedProducts(2),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is RecommendedProductsLoading) {
                  return const Center(
                      child: ListOfShimmerRecommendedProducts());
                } else if (state is RecommendedProductsFailure) {
                  return Center(child: Text(state.message));
                } else if (state is RecommendedProductsSuccess) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: CustomRecommendedProduct(
                          recommendedProductModel: state.products[index],
                        ),
                      );
                    },
                  );
                }
                return const Center(child: ListOfShimmerRecommendedProducts());
              },
            ),
          ),
        ),
      ],
    );
  }
}
