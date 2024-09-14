import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;
   Future<void>getFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchAllBooks();
    result.fold((failure){
      emit(FeaturedBooksErrorState(failure.errorMessage));

    }, (books){
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
