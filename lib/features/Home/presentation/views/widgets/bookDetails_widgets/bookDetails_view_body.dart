import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bookDetails_widgets/bookDetails_custom_appbar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bookDetails_widgets/book_details.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bookDetails_widgets/custom_button.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bookDetails_widgets/similar_books_listview.dart';
import 'package:bookly/features/Home/presentation/views/widgets/homeView_widgets/book_rate.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody(this.bookModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const BookDetails_Appbar(),
                BookDetails(bookModel: bookModel),
                const SizedBox(
                  height: 16,
                ),
                const BookRate(),
                const SizedBox(height: 37),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(bookModel: bookModel),
                ),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
