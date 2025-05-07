import 'dart:math';

import 'package:encrypt/encrypt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static Future<Key> getOrCreateAesKey() async {
    final keyName = '^%fgF&*G(YaHfU&^9JI)';
    final storage = const FlutterSecureStorage();
    String? keyBase64 = await storage.read(key: keyName);

    if (keyBase64 == null) {
      final random = Random.secure();
      final keyBytes = List<int>.generate(32, (_) => random.nextInt(10));
      final newKey = Key.fromUtf8(String.fromCharCodes(keyBytes));
      await storage.write(key: keyName, value: newKey.base64);
      return newKey;
    }

    return Key.fromBase64(keyBase64);
  }
}
