// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$imageAtom = Atom(name: '_HomeControllerBase.image');

  @override
  File get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(File value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$getImageFromGalleryAsyncAction =
      AsyncAction('_HomeControllerBase.getImageFromGallery');

  @override
  Future<void> getImageFromGallery() {
    return _$getImageFromGalleryAsyncAction
        .run(() => super.getImageFromGallery());
  }

  final _$getImageFromCameraAsyncAction =
      AsyncAction('_HomeControllerBase.getImageFromCamera');

  @override
  Future<void> getImageFromCamera() {
    return _$getImageFromCameraAsyncAction
        .run(() => super.getImageFromCamera());
  }

  final _$cleanImageAsyncAction = AsyncAction('_HomeControllerBase.cleanImage');

  @override
  Future<void> cleanImage() {
    return _$cleanImageAsyncAction.run(() => super.cleanImage());
  }

  @override
  String toString() {
    return '''
image: ${image}
    ''';
  }
}
