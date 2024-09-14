import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/bookDetails_widgets/bookDetails_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final BookModel bookModel;

  const BookDetailsView({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: BookDetailsViewBody(bookModel),
    );
  }
}
