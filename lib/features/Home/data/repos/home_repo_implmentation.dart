import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/network/api_service.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchAllBooks()async {
    try {
      var data =  await apiService.get(
          endPoint:'v1/volumes?Filtering=free-ebooks&q=subject :flutter&maxResults=40'
      );
      List<BookModel>books = [];
      for(var i in data['items']){
        books.add(BookModel.fromJson(i));
      }
      return Right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioException(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
   try {
     var data =  await apiService.get(
         endPoint:'v1/volumes?Filtering=free-ebooks&q=flutter&Sorting&maxResults=40'
     );
     List<BookModel>books = [];
     for(var i in data['items']){
       books.add(BookModel.fromJson(i));
     }
     return Right(books);
   } catch (e) {
     if(e is DioException){
       return Left(ServerFailure.fromDioException(e));
     }

     return Left(ServerFailure(e.toString()));
   }
  }

}