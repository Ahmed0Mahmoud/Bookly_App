import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/error_message.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../homeView_widgets/book_shape.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BookShape(imageUrl: "${state.books[index].volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}"),
                );
              },
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,

            ),
          );
        }
        else if(state is FeaturedBooksErrorState){
          return CustomErrorMessage(errMessage: state.errorMessage);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
//          height: MediaQuery.of(context).size.height * .14,
