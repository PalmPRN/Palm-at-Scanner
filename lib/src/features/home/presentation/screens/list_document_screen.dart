import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/src/common/build_context_x.dart';
import 'package:palm_at_scanner/src/features/home/application/scanned_file_service.dart';
import 'package:palm_at_scanner/src/features/home/presentation/widgets/list_document_widget.dart';

class ListDocumentScreen extends ConsumerWidget {
  const ListDocumentScreen({super.key});

  void clearAllDocuments(WidgetRef ref) async {
    //dialog to confirm clearing all documents
    final shouldClear = await showDialog<bool>(
      context: ref.context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Clear all documents'),
          content: const Text('Are you sure you want to clear all documents?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    if (shouldClear == true) {
      await ref.read(scannedFileServiceProvider).clearDocuments();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palm at Scanner'),
        actions: [
          TextButton(
            onPressed: () => clearAllDocuments(ref),
            child: Text(
              'Clear all',
              style: context.textTheme.titleMedium?.copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
      // List of documents can be displayed here
      body: ListDocumentWidget(),
      bottomNavigationBar: FloatingActionButton.large(
        onPressed: () async =>
            await ref.read(scannedFileServiceProvider).addDocument(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.camera_alt),
            const SizedBox(width: 16),
            Text('Scan Document', style: context.textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
