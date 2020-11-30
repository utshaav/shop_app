import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/modules/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/item_cards.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Woman",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: product[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contect) => DetailsScreen(
                      product: product[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jwellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index)),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 3,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
