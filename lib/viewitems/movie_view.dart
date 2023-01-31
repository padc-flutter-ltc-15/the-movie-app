import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../resources/dimens.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: MARGIN_MEDIUM),
      width: MOVIE_LIST_ITEM_WIDTH,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://fictionhorizon.com/wp-content/uploads/2021/09/Wolverine-Movies-in-Order-All-X-Logan-Movies-Order-09.jpg",
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: MARGIN_MEDIUM,
          ),
          const Text(
            "West World",
            style: TextStyle(
                color: Colors.white,
                fontSize: TEXT_REGULAR_2X,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: MARGIN_MEDIUM,
          ),
          Row(
            children: [
              Text(
                "8.9",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: TEXT_REGULAR,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MARGIN_MEDIUM,
              ),
              RatingBar.builder(
                initialRating: 5.0,
                itemSize: MARGIN_MEDIUM_2,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (value) {
                  print(value);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
