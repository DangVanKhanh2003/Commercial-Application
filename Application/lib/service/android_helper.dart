import 'package:flutter/services.dart';

class AndroidHelper {
  static const MethodChannel _methodChannel = MethodChannel(
    'com.haruma.app.shopping_app',
  );

  static Future<bool> requestStoragePermission() async {
    final result = await _methodChannel.invokeMethod<bool>(
      'request_storage_permission',
    );
    return result!;
  }

  static Future<bool> checkStoragePermission() async {
    final result = await _methodChannel.invokeMethod<bool>(
      'check_storage_permission',
    );
    return result!;
  }

  static Future<String?> pickFileFromDocument() async {
    final result = await _methodChannel.invokeMethod<String?>(
      'pick_file',
    );
    return result!;
  }

  static Future<String?> pickDirectoryFromDocument() async {
    final result = await _methodChannel.invokeMethod<String?>(
      'pick_directory',
    );
    return result!;
  }

  static Future<String?> saveFileFromDocument() async {
    final result = await _methodChannel.invokeMethod<String?>(
      'save_file',
    );
    return result!;
  }
}
