import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          TextFormField(
            controller: TextEditingController(

            ),
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Search",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                      color: Colors.blue, size: 24),
                )),
          ),
          const SizedBox(
            height: 17,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Results :',
                style: Styles.textStyle18,
              )),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: Search_ListView(),
          ),
        ],
      ),
    );
  }
}

class Search_ListView extends StatelessWidget {
  const Search_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BestSellerItem(imageUrl: '',),
        );
      },
      itemCount: 10,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
    );
  }
}
