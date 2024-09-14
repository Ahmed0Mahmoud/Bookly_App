import 'package:bookly/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class BookShape extends StatelessWidget {
  final String imageUrl;
  const BookShape({
    super.key, required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
            imageUrl: "$imageUrl??${AssetsData.nullImage}",
            errorWidget: (context, url, error) => const Image(image: NetworkImage(AssetsData.errorImage)),
        )
      ),
    );
  }
}
