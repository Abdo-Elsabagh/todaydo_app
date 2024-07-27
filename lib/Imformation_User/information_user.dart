import 'dart:io';

import 'package:flutter/material.dart';
import 'package:todaydo_app/core/app_colors.dart';
import 'package:todaydo_app/core/app_local_storage.dart';

// ignore: camel_case_types
class informationUser extends StatelessWidget {
  const informationUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: AppLocal.getChached(AppLocal.namekey),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    'Hello ${snapshot.data!.split(' ').first} ',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  );
                } else {
                  return const Text(
                    'Hello',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  );
                }
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Have a nice day',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
        FutureBuilder(
          future: AppLocal.getChached(AppLocal.imagekey),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CircleAvatar(
                radius: 26,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: FileImage(File(snapshot.data!)),
                  radius: 24,
                ),
              );
            } else {
              return CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: AppColors.grey,
                    backgroundImage: const AssetImage('assets/user.png'),
                  ));
            }
          },
        )
      ],
    );
  }
}
