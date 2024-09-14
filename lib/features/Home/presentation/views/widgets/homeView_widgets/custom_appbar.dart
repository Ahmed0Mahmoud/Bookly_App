import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 36,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(Approuter.searchViewRoute);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 28,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
