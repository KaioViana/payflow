import 'package:flutter/material.dart';
import 'package:payflow/services/auth/auth_service.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';

class SplashPage  extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    Future.delayed(Duration(seconds: 2), () => {
      authService.currentUser(context)
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(AppImages.union),
          ),
          Center(
            child: Image.asset(AppImages.logoFull)
          )
        ],
      ),
    );
  }
}
