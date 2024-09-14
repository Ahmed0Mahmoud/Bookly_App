import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetails_Appbar extends StatelessWidget {
  const BookDetails_Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                size: 28,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 28,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
