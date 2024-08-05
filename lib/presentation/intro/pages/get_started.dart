import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
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
                    "Enjoy Listening To Music",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    "Search, discover and play trending music and podcasts for free. Create your own music playlists and enjoy songs that suit your current mood.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BasicAppButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const ChooseModePage()));
                      },
                      title: "Get Started")
                ],
              ))
        ],
      ),
    );
  }
}
