import 'package:beyondhack/data/model/wardrobe/wardrobe_item.f.dart';
import 'package:beyondhack/ui/utils/image_picker_utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyWardrobeViewmodel extends GetxController {
  List<WardrobeItem> selectedWardrobeItems = [];

  void pickImage() async {
    final filePaths = await ImagePickerUtils.pickImage();
    if (filePaths?.isEmpty ?? true) {
      return;
    }
    // TODO:
  }

  Future _fetchWardrobeImages() async {}
}
