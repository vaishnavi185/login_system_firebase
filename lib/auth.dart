import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'sign in.dart';
import 'package:firebase_core/firebase_core.dart';
class AuthenticationRepotry extends GetxController{
  static AuthenticationRepotry get instance => Get.find();
  final _Auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  @override
  void onReady(){
    firebaseUser= Rx<User?>(_Auth.currentUser);
    firebaseUser.bindStream(_Auth.userChanges());
    ever(firebaseUser, setInitialScreen);

  }


  setInitialScreen(User? user) {
    user == null? Get.offAll(()=>login()):Get.offAll(()=>const sign());

  }

  Future<void> CreateUserWithEmailAndPssward (String email, String passward)
async {
    try{
      // await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
      await _Auth.createUserWithEmailAndPassword(email: email, password:passward);
    }on FirebaseAuthException catch (e){

    } catch(_){}
}
  Future<void> loginWithEmailAndPssward (String email, String passward)
  async {
    try{
      await _Auth.signInWithEmailAndPassword(email: email, password: passward);
    }on FirebaseAuthException catch (e){

    } catch(_){}
  }
}
