import 'package:beyondhack/utils/globals.dart';
import 'package:cloud_functions/cloud_functions.dart';

class CloudFunctionApi {
  static FirebaseFunctions functions = FirebaseFunctions.instanceFor(
    region: 'asia-northeast3',
  );

  static recognizeObjects(List<String> imageUrls) async {
    final callable = functions.httpsCallable('recognizeObjects');
    final results = await callable.call<Map<String, dynamic>>(
      {
        'images': imageUrls,
      },
    );
    logger.i(results.data);
    return results.data;
  }
}
