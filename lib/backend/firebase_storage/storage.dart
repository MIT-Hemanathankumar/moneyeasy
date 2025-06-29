import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mime_type/mime_type.dart';

Future<String> uploadData(String path, Uint8List data) async {
  final storageRef = FirebaseStorage.instance.ref().child(path);
  final contentType = mime(path) ?? 'application/octet-stream';
  final metadata = SettableMetadata(contentType: contentType);

  final result = await storageRef.putData(data, metadata);

  if (result.state == TaskState.success) {
    return await result.ref.getDownloadURL();
  } else {
    throw Exception('Upload failed');
  }
}
