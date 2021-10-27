import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  File image;

  final ImagePicker picker = ImagePicker();

  @action
  Future<void> getImageFromGallery() async {
    try {
      final pickedImage = await picker.getImage(source: ImageSource.gallery);
      image = File(pickedImage.path);
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> getImageFromCamera() async {
    try {
      final pickedImage = await picker.getImage(source: ImageSource.camera);
      image = File(pickedImage.path);
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> cleanImage() async {
    try {
      image = null;
    } catch (e) {
      print(e);
    }
  }
}
