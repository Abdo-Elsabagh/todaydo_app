import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todaydo_app/Imformation_User/upload_viem.dart';
import 'package:todaydo_app/core/app_colors.dart';
import 'package:todaydo_app/core/app_local_storage.dart';
import 'package:todaydo_app/screen/tasks_screen.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      AppLocal.getBool(AppLocal.isUpload).then((value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                value ? const TasksScreen() : const UploadViem()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/logo.json',
              height: 250,
            ),
            Text('To Day Do',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColors.sacffoldBG)),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Your Personal assistant in organizing your taska',
              style: TextStyle(color: AppColors.sacffoldBG, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
