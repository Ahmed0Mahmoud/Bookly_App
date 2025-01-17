import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
 final HomeRepo homeRepo;

 Future<void> getNewestBooks()async{
   emit(NewestBooksLoadingState());
   var result = await homeRepo.fetchNewestBooks();
   result.fold((failure){
     emit(NewestBooksErrorState(failure.errorMessage));
   },
      (books){
     emit(NewestBooksSuccessState(books));
   });

 }

}
