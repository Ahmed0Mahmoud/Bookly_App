import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final BookModel bookModel;
  const CustomButton({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    String word = 'preview';
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: Center(
                    child: Text("Free",
                        style: Styles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff000000))))),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              if (bookModel.volumeInfo?.previewLink == null) {
                word = 'not available';
              } else {
                launchUrl(Uri.parse("${bookModel.volumeInfo!.previewLink}"));
              }
            },
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Center(
                  child: Text(
                word,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
