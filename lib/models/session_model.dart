import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:goat_app/models/user.dart';

class ChatSession {
  String? fixtureId;
  List<UserModel>? usersInSession;

  ChatSession({
    required this.fixtureId,
    this.usersInSession,
  });

  Future<void> createNewSession() async {
    final firebaseFirestore = FirebaseFirestore.instance;
    final sessionRef = firebaseFirestore.collection("Sessions").doc(fixtureId);
    sessionRef.get().then((snapshot) async => {
          if (!snapshot.exists)
            {
              await firebaseFirestore
                  .collection("Sessions")
                  .doc(fixtureId)
                  .set({"id": fixtureId})
            }
        });
    print(sessionRef);
    if (sessionRef == null) {}
  }
}
