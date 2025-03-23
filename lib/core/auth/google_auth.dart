import 'package:firebase_auth/firebase_auth.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //TODO: ReImplemnt it using Cubit
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      // google signin
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return Future.error("Error signing in with Google");
      }

      //authdetails fromrequest
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Sign in     Firebase
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);

      await sl<CacheHelper>()
          .writeSecureData(key: 'email', value: googleUser.email);
      await sl<CacheHelper>()
          .writeSecureData(key: 'name', value: googleUser.displayName ?? '');

      // هنا بيرجع تسجيل الدخول
      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
    await auth.signOut();
  }
}
