import 'dart:io';

import 'package:beyondhack/data/datasource/cloud_function_api.dart';
import 'package:beyondhack/data/datasource/datasource_constants.dart';
import 'package:beyondhack/data/model/wardrobe/wardrobe_item.f.dart';
import 'package:beyondhack/data/repository/auth/auth_repository.dart';
import 'package:beyondhack/ui/utils/image_picker_utils.dart';
import 'package:beyondhack/utils/globals.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:path/path.dart';

class MyWardrobeViewmodel extends GetxController {
  List<WardrobeItem> selectedWardrobeItems = [];

  void pickImage() async {
    final filePaths = await ImagePickerUtils.pickImage();
    if (filePaths?.isEmpty ?? true) {
      return;
    }
    // TODO:
    final results = await Future.wait(
      filePaths!
          .map(
            (e) => AuthRepository.instance.client.storage.uploadBytes(
              fileName: basename(e),
              fileContents: File(e).readAsBytesSync(),
            ),
          )
          .toList(),
    );
    final imageUrls = results
        .map(
          (e) => '$backendBaseUrl/v1/storage/files/${e.id}',
        )
        .toList();
    final recognitionResults = await CloudFunctionApi.recognizeObjects(imageUrls);
    logger.i(recognitionResults);
  }

  Future _fetchWardrobeImages() async {}
}
