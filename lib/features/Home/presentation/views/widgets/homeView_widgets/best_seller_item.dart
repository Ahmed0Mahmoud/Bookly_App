import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/homeView_widgets/book_shape.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'book_rate.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel bookModel;
  const BestSellerItem({super.key,required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          Approuter.bookDetailsViewRoute,
          extra: bookModel,  // Pass the BookModel here
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            BookShape(imageUrl: '${bookModel.volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}'),
             const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    '${bookModel.volumeInfo!.title}',
                    style:
                        Styles.textStyle20.copyWith(fontFamily: KGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 260,
                  child: Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 44.3,
                    ),
                    const BookRate(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
