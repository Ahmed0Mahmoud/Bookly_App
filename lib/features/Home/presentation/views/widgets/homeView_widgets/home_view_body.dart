import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/homeView_widgets/Feauterd_books_ListView.dart';
import 'package:bookly/features/Home/presentation/views/widgets/homeView_widgets/best_seller_listview.dart';
import 'package:bookly/features/Home/presentation/views/widgets/homeView_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: CustomAppBar(),
              ),
              FeauterdBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Newest', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: BestSeller_ListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
