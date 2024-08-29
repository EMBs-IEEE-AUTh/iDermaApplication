import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //Google Sign in
  signInWithGoogle() async {
    //begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth details from reguest
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create  new credential for the user
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    //final, let's sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
