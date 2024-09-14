import 'package:bookly/features/Home/data/repos/home_repo_implmentation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../network/api_service.dart';

final getIt = GetIt.instance;

void SetupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(
    Dio(),
  ),);
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
   getIt.get<ApiService>(),
  ),);
}
