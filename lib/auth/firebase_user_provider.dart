import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JustYachtFirebaseUser {
  JustYachtFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

JustYachtFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JustYachtFirebaseUser> justYachtFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<JustYachtFirebaseUser>(
        (user) => currentUser = JustYachtFirebaseUser(user));
