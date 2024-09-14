import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/error_message.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/styles.dart';
import '../homeView_widgets/book_shape.dart';
class BookDetails extends StatelessWidget {
  final BookModel bookModel;

  const BookDetails({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
    builder: (context, state) {
      if(state is NewestBooksSuccessState){
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .20),
              child:   BookShape(imageUrl:'${bookModel.volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}'),
            ),
            const SizedBox(
              height: 43,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "${bookModel.volumeInfo?.title}",
                style: Styles.textStyle30,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "${bookModel.volumeInfo?.authors![0]}",
              style:
              Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        );
      }
      else if(state is NewestBooksErrorState){
        return CustomErrorMessage(errMessage: state.errorMessage);
      }
      else{
        return const Center(child: CircularProgressIndicator());
      }
  },
);
  }
}
