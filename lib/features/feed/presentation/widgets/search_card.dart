import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/authentication/logic/auth.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/user.dart';

import '../../logic/api_service.dart';
import 'loading_card.dart';

  Future postDetailsToFirestore(UserModel? currentUser, List<Response> response) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    await firebaseFirestore
	.collection("Users")
	.doc(currentUser?.uid)
	.set({
		"favoriteTeams": response[0].team.name,
	},SetOptions(merge: true));
  }

Widget? SearchCard(UserModel? currentUser, List<Response> response, BuildContext context, int index)
{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
return GestureDetector(
		onTap: () {
				  currentUser?.favoriteTeams = response[index].team.name;
			currentUser?.favoriteTeams = response[index].team.name;
			print(currentUser?.uid);
			postDetailsToFirestore(currentUser, response);
		},
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
    )),
	);
		}
