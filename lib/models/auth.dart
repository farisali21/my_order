import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// part 'auth.g.dart';

@HiveType(typeId: 0)
class Auth extends HiveObject {
  @HiveField(0)
  late String _accessToken;

  @HiveField(1)
  late int _generalId;

  @HiveField(2)
  late String _firstName;

  @HiveField(3)
  late String _lastName;

  @HiveField(4)
  late String _email;

  @HiveField(5)
  late String _phone;

  @HiveField(6)
  late int _areaId;

  @HiveField(7)
  late String _areaNameEn;

  @HiveField(8)
  late String _areaNameAr;

  @HiveField(9)
  late String _cityNameEn;

  @HiveField(10)
  late String _cityNameAr;

  Future<Directory> _getDirectory() async {
    Directory? directory = await getExternalStorageDirectory();
    const String pathExt = '/backups/';
    Directory newDirectory = Directory(directory!.path + pathExt);
    if (await newDirectory.exists() == false) {
      return newDirectory.create(recursive: true);
    }
    return newDirectory;
  }
}
