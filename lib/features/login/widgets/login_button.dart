import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/er_login/cubit/requiststate_cubit.dart';
import '../../../core/routing/routes_exports.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequiststateCubit, RequiststateState>(
      listener: (context, state) {
        if (state is RequiststateSuccess) {
          context.pushNamed(Routes.bottomNavBar);
        } else if (state is RequiststateFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.failure.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is RequiststateLoading) {
          return const CircularProgressIndicator();
        }

        return Center(
          child: AppCustomButton(
            onPressed: () {
              context.read<RequiststateCubit>().fetchData();
            },
            text: AppStrings.loginButtonString,
            textStyle: AppTextStyles.font16whiteBold,
            buttonColor: AppColors.buttonLoginColor,
            height: 50.h,
            width: 147.w,
            radius: 40.r,
          ),
        );
      },
    );
  }
}
