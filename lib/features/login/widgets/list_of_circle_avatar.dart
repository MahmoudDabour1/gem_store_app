import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
// import 'package:gem_store_app/core/auth/googleauth_cubit.dart';

import '../auth/cubit/googleauth_cubit.dart';
import 'AuthLoading.dart';

class ListOfCircleAvatar extends StatefulWidget {
  const ListOfCircleAvatar({super.key});

  @override
  _ListOfCircleAvatarState createState() => _ListOfCircleAvatarState();
}

class _ListOfCircleAvatarState extends State<ListOfCircleAvatar> {
  final List<CircleAvatarModel> circleAvatarModel = [
    CircleAvatarModel(image: AppAssets.appleLogo),
    CircleAvatarModel(image: AppAssets.googleLogo),
    CircleAvatarModel(image: AppAssets.facebookLogo),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleauthCubit, GoogleauthState>(
      listener: (context, state) {
        if (state is AuthError) {
          _showErrorMessage(state.message);
        } else if (state is AuthSuccess) {
          Navigator.pushReplacementNamed(context, Routes.bottomNavBar);
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            ListView.separated(
              padding: 70.ph,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomCircleAvatar(
                  circleAvatarModel: circleAvatarModel[index],
                  onTap: () async {
                    if (index == 1) {
                      context.read<GoogleauthCubit>().signInWithGoogle();
                    }
                  },
                );
              },
              separatorBuilder: (context, index) {
                return 20.hs;
              },
              itemCount: circleAvatarModel.length,
            ),
            if (state is AuthLoading)
              Positioned.fill(
                child: AuthLoadingOverlay(),
              ),
          ],
        );
      },
    );
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: const Color.fromARGB(255, 204, 88, 80),
      ),
    );
  }
}
