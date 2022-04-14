import 'package:nhost_sdk/nhost_sdk.dart';

import '../repository/auth/shared_preference_auth_store.dart';

const backendBaseUrl = 'https://lewiwdamczochgkvedud.nhost.run';
final nHostClient = NhostClient(
  backendUrl: backendBaseUrl,
  authStore: SharedPreferencesAuthStore(),
);
