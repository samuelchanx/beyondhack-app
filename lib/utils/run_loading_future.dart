import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../data/model/result/result.f.dart';
import 'globals.dart';

Future<Result<T>> runLoading<T>(Future<T> future) async {
  try {
    await EasyLoading.show();
    final results = await future;
    await EasyLoading.dismiss();
    return Result.success(results);
  } catch (e, stack) {
    await EasyLoading.dismiss();
    logger.e('error', e, stack);
    return Result.fail(e is Exception ? e : Exception(e));
  }
}

Future<Result<T>> runAsync<T>(Future<T> future) async {
  try {
    final results = await future;
    return Result.success(results);
  } catch (e, stack) {
    logger.e('error', e, stack);
    return Result.fail(e is Exception ? e : Exception(e));
  }
}

Result<T> runCatched<T>(T task) {
  try {
    final results = task;
    return Result.success(results);
  } catch (e, stack) {
    logger.e('error', e, stack);
    return Result.fail(e is Exception ? e : Exception(e));
  }
}
