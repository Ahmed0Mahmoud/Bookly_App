import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksStates{}
class NewestBooksInitialState extends NewestBooksStates{}
class NewestBooksLoadingState extends NewestBooksStates{}
class NewestBooksSuccessState extends NewestBooksStates{
  final List<BookModel>books;

  NewestBooksSuccessState(this.books);
}
class NewestBooksErrorState extends NewestBooksStates{
  final String errorMessage;

  NewestBooksErrorState(this.errorMessage);
}