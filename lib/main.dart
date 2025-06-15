import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/app.dart';
import 'package:palm_at_scanner/src/features/home/data/sembast_scanned_file_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final localDocumentRepository =
      await SembastScannedFileRepository.makeDefault();
  final container = ProviderContainer(
    overrides: [
      sembastScannedFileRepositoryProvider.overrideWithValue(
        localDocumentRepository,
      ),
    ],
  );

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const PalmAtScanner(),
    ),
  );
}
