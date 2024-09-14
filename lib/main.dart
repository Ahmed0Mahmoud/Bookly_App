import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/repos/home_repo_implmentation.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';



main() {
  SetupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>(),
        )..getFeaturedBooks(),),
        BlocProvider(create: (context)=> NewestBooksCubit(
          getIt.get<HomeRepoImpl>(),
        )..getNewestBooks(),),
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
