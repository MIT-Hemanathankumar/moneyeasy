import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MEsyFirebaseUser {
  MEsyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MEsyFirebaseUser currentUser;
bool get loggedIn => currentUser.loggedIn ?? false;
Stream<MEsyFirebaseUser> mEsyFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MEsyFirebaseUser>((user) => currentUser = MEsyFirebaseUser(user));
