import 'package:bookly/features/Home/presentation/views/bookDetails_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/data/models/book_model/book_model.dart';


abstract class Approuter {
  static const splashViewRoute = '/';
  static const homeViewRoute = '/homeView';
  static const bookDetailsViewRoute = '/bookDetailsview';
  static const searchViewRoute = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) {
          final bookModel = state.extra as BookModel;
          return BookDetailsView(bookModel: bookModel);
        },
      ),
      GoRoute(
        path: searchViewRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
