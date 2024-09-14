import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle16.copyWith(
              color: const Color(
                0xff707070,
              ),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
