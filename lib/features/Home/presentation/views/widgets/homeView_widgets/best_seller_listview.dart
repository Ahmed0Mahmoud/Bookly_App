import 'package:bookly/core/utils/error_message.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';

class BestSeller_ListView extends StatelessWidget {
  const BestSeller_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
        builder: (context,state) {
          if(state is NewestBooksSuccessState){
            return ListView.builder(
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerItem(bookModel: state.books[index]),
                );
              },
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            );
          }
          else if (state is NewestBooksErrorState){
            return CustomErrorMessage(errMessage: state.errorMessage);
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        }
    );
  }
}
