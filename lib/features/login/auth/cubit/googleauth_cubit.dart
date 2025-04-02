import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:meta/meta.dart';

part 'googleauth_state.dart';

class GoogleauthCubit extends Cubit<GoogleauthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  GoogleauthCubit() : super(GoogleauthInitial());

  Future<void> signInWithGoogle() async {
    emit(AuthLoading());
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        emit(AuthError("Error signing in with Google"));
        return;
      }

      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      await sl<CacheHelper>()
          .writeSecureData(key: 'email', value: googleUser.email);
      await sl<CacheHelper>()
          .writeSecureData(key: 'name', value: googleUser.displayName ?? '');

      if (userCredential.user != null) {
        emit(AuthSuccess(userCredential.user!));
      } else {
        emit(AuthError("User is null after sign in"));
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(AuthLoading());
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      emit(AuthSignedOut());
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
