import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/home_cubit.dart';
import '../../../controller/home_state.dart';
import 'custom_feature_products.dart';

class FeaturedProductsBlocBuilder extends StatelessWidget {
  const FeaturedProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            featuredProductsLoading: () => setupLoading(),
            featuredProductsSuccess: (products) => setupSuccessWidget(products),
            featuredProductsFailure: (error) => setupError(error),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget setupSuccessWidget(products) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 25.w,
          ),
          child: CustomFeatureProduct(
            featuredProductsModel: products[index],
          ),
        );
      },
    );
  }

  Widget setupError(final String error) {
    return Center(child: Text('Error: $error'));
  }

  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
