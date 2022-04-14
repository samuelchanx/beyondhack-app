import 'dart:convert';

import 'package:app_links/app_links.dart';
import 'package:beyondhack/data/datasource/remote_datasource.dart';
import 'package:beyondhack/data/model/graphql/user/user.dart';
import 'package:beyondhack/data/model/result/result.f.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:beyondhack/utils/run_loading_future.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

import '../../../utils/globals.dart';
import '../../datasource/datasource_constants.dart';

class AuthRepository {
  static const nhostGoogleSignInUrl = '$backendBaseUrl/v1/auth/providers/google/';

  static AuthRepository? _instance;

  static Map<String, String> get apiHeaders {
    return {
      'Authorization': 'Bearer ${AuthRepository.instance.client.auth.accessToken}',
    };
  }

  NhostClient get client => nHostClient;

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  String? get idToken {
    return client.auth.accessToken;
  }

  static AuthRepository get instance {
    _instance ??= AuthRepository();
    return _instance!;
  }

  // bool get isLoggedIn {
  //   return client.auth;
  // }

  Future signOut() async {
    // await runAsync(FirebaseAuth.instance.signOut());
    await runAsync(client.auth.signOut());
  }

  String? get uid {
    return client.auth.currentUser?.id;
  }

  Future<bool> signInWithEmailPassword(String email, String password) async {
    final results = await runAsync(client.auth.signInEmailPassword(
      email: email,
      password: password,
    ));
    return results is Success;
  }

  Future<bool> signUpWithEmailPassword(String email, String password) async {
    final results = await runAsync(client.auth.signUp(
      email: email,
      password: password,
    ));
    if (results is Success) {
      final apiClient = ApiClient();
      await runAsync(apiClient.generalMutation(
        AddUserMutation(variables: AddUserArguments(id: uid!)),
      ));
    }
    return results is Success;
  }

  Future signInWithGoogle() async {
    // client.auth.completeOAuthProviderSignIn(redirectUrl)
    // final appLinks = AppLinks();
  }
}

enum AuthStatus {
  success,
  failed,
  unknown,
}

class AuthStatusResult {
  AuthStatusResult(this.status, [this.isNewUser]);

  final bool? isNewUser;
  final AuthStatus status;
}
