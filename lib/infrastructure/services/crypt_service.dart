import 'package:encrypt/encrypt.dart';
import 'package:ssh_button/infrastructure/services/secure_storage_service.dart';

class CryptService {
  static Future<String> decryptData({required String data}) async {
    final key = await SecureStorageService.getOrCreateAesKey();
    final parts = data.split(':');

    if (parts.length != 2) throw FormatException('Invalid encrypted format');

    final iv = IV.fromBase64(parts[0]);
    final encrypted = Encrypted.fromBase64(parts[1]);

    final encrypter = Encrypter(AES(key));
    return encrypter.decrypt(encrypted, iv: iv);
  }

  static Future<String> encryptData({required String data}) async {
    final key = await SecureStorageService.getOrCreateAesKey();
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(data, iv: iv);
    return '${iv.base64}:${encrypted.base64}';
  }
}
