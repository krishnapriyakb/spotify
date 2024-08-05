import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.ChooseModeBG),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              color: Colors.black.withOpacity(0.15),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(AppVectors.logo)),
                  const Spacer(),
                  const Text(
                    "Choose Mode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff30393C)
                                        .withOpacity(0.5),
                                    shape: BoxShape.circle),
                                height: 80,
                                width: 80,
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Dark Mode",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff30393C)
                                        .withOpacity(0.5),
                                    shape: BoxShape.circle),
                                height: 80,
                                width: 80,
                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Light Mode",
                            style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BasicAppButton(onPressed: () {}, title: "Continue"),
                ],
              ))
        ],
      ),
    );
  }
}
