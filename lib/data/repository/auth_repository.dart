import 'dart:convert';

import 'package:beyondhack/utils/run_loading_future.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

class AuthRepository {
  static AuthRepository? _instance;

  NhostClient get client => nHostClient;

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  String? get idToken {
    return client.auth.accessToken;
  }

  static AuthRepository get instance {
    _instance ??= AuthRepository();
    return _instance!;
  }

  bool get isLoggedIn {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future signOut() async {
    await runAsync(FirebaseAuth.instance.signOut());
    await runAsync(client.auth.signOut());
  }

  String? get uid {
    return client.auth.currentUser?.id;
  }

  static String getEmailFromPhone(String phone) {
    return '$phone@taxieasy.beyondlabs.studio';
  }

  static String passwordFromPhone(String phone) {
    return sha256.convert(utf8.encode(phone)).toString();
  }

  Future<void> sendPhoneVerificationCode(String phone, Function(String) onCodeSent) async {
    await firebaseAuth.verifyPhoneNumber(
      timeout: const Duration(seconds: 60),
      phoneNumber: phone,
      verificationCompleted: (phoneAuthCredential) async {
        await EasyLoading.dismiss();
      },
      verificationFailed: (e) async {
        await EasyLoading.dismiss();
        Get.snackbar("錯誤", e.code);
      },
      codeSent: (verificationId, forceResendingToken) async {
        await EasyLoading.dismiss();
        onCodeSent(verificationId);
      },
      codeAutoRetrievalTimeout: (verificationId) async {
        await EasyLoading.dismiss();
      },
    );
  }

  Future<ConfirmationResult> signIn(String phoneNumber) async {
    return await firebaseAuth.signInWithPhoneNumber(phoneNumber);
  }

  Future<AuthStatusResult> verifyPhoneOTP(
    String verificationId,
    String smsCode,
    String phoneNumber, {
    bool isSignUp = true,
  }) async {
    try {
      AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      final userCredential = await firebaseAuth.signInWithCredential(authCredential);
      final isNewUser = userCredential.additionalUserInfo?.isNewUser ?? true;
      if (isNewUser || isSignUp) {
        await client.auth.signUp(
          email: getEmailFromPhone(phoneNumber),
          password: passwordFromPhone(phoneNumber),
        );
      } else {
        await client.auth.signInEmailPassword(
          email: getEmailFromPhone(phoneNumber),
          password: passwordFromPhone(phoneNumber),
        );
      }
      return AuthStatusResult(AuthStatus.success, isNewUser);
    } on FirebaseAuthException catch (e, stack) {
      logger.e('error', e, stack);
      switch (e.code) {
        case 'invalid-verification-code':
          return AuthStatusResult(AuthStatus.invalidVerificationCode);
        case 'invalid-verification-id':
          return AuthStatusResult(AuthStatus.invalidVerificationId);
      }
      return AuthStatusResult(AuthStatus.unknown);
    } catch (e, stack) {
      logger.e('error', e, stack);
      rethrow;
    }
  }
}

enum AuthStatus {
  success,
  invalidVerificationCode,
  invalidVerificationId,
  unknown,
}

class AuthStatusResult {
  AuthStatusResult(this.status, [this.isNewUser]);

  final bool? isNewUser;
  final AuthStatus status;
}
