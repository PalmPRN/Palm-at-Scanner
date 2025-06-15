import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/src/features/home/domain/scanned_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast_io.dart';

part 'sembast_scanned_file_repository.g.dart';

class SembastScannedFileRepository {
  // This class is a placeholder for the Sembast document repository.
  // You can implement methods to interact with Sembast database here.
  SembastScannedFileRepository(this.db);

  final Database db;
  final store = StoreRef.main();

  static Future<Database> _createDatabase(String filename) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    return databaseFactoryIo.openDatabase('${appDocDir.path}/$filename');
  }

  static Future<SembastScannedFileRepository> makeDefault() async {
    return SembastScannedFileRepository(await _createDatabase('document.db'));
  }

  Future<void> addDocument(ScannedFile file) async {
    await store.record(file.id).put(db, file.toJson());
  }

  Future<void> deleteDocument(String id) async {
    // Implement logic to delete a document by its ID from the Sembast database
    await store.record(id).delete(db);
  }

  Future<void> clearDocument() async {
    // Implement logic to delete a document by its ID from the Sembast database
    await store.drop(db);
  }

  Future<List<ScannedFile>> getDocuments() async {
    // Implement logic to retrieve documents from the Sembast database
    // get all records from the store
    final records = await store.find(db);
    // map the records to Document objects
    final documents = records.map((record) {
      final data = record.value as Map<String, dynamic>;
      return ScannedFile.fromJson(data);
    }).toList();
    return documents;
  }

  Stream<List<ScannedFile>> watchDocuments() {
    // Implement logic to watch documents from the Sembast database
    return store.query().onSnapshots(db).map((snapshots) {
      return snapshots.map((snapshot) {
        final data = snapshot.value as Map<String, dynamic>;
        return ScannedFile.fromJson(data);
      }).toList();
    });
  }
}

@Riverpod(keepAlive: true)
SembastScannedFileRepository sembastScannedFileRepository(Ref ref) {
  // * Override this in the main method
  throw UnimplementedError();
}
