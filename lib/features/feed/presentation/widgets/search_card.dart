import 'package:flutter/material.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/models/freezed_model.dart';

import '../../logic/api_service.dart';
import 'loading_card.dart';

Widget? SearchCard(List<Response> response, BuildContext context, int index)
{
return GestureDetector(
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: getWidth(context)/6.5,
            child: Image.network(response[index].team.logo ?? ''),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15),
            child:Text(
              response[index].team.name ?? ''
            ),
          )
        ],
      ),
    ),
  ) ,
);
}
