import 'package:google_sign_in/google_sign_in.dart';

class UserAuthentication {
  final _googleSignIn = GoogleSignIn();
  Future signinwithGoogle(context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
      }
    } catch (e) {
      return e;
    }
  }
}
