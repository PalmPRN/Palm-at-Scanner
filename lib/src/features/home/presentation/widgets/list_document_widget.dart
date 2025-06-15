import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:open_filex/open_filex.dart';
import 'package:palm_at_scanner/src/common/build_context_x.dart';
import 'package:palm_at_scanner/src/features/home/application/scanned_file_service.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:share_plus/share_plus.dart';

class ListDocumentWidget extends ConsumerWidget {
  const ListDocumentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scannedFileList = ref.watch(scannedFileStreamProvider);

    return scannedFileList.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: $e')),
      data: (data) => (data.isEmpty)
          ? Center(child: Text('No documents found.'))
          : ListView.separated(
              itemCount: data.length,
              separatorBuilder: (context, index) =>
                  Divider(height: 1, color: Colors.grey.shade300),
              itemBuilder: (context, index) {
                final file = data[index];
                final createDate = DateFormat(
                  'dd/MM/yyyy',
                ).format(file.createdDate.toLocal());

                return ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Row(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 141,
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: PdfViewer.file(
                          file.path,
                          params: PdfViewerParams(
                            enableTextSelection: false,
                            backgroundColor: Colors.white,
                            minScale: 0.1,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              file.name,
                              style: context.textTheme.titleLarge,
                            ),

                            Text('Page : ${file.page}'),
                            Text(createDate),
                          ],
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    iconSize: 40,
                    icon: Icon(Icons.share),
                    onPressed: () async {
                      // Handle share action
                      print('Share document: ${file.name}');
                      SharePlus.instance.share(
                        ShareParams(files: [XFile(file.path)]),
                      );
                    },
                  ),
                  onTap: () async {
                    // Handle document tap
                    print(
                      'Document: ${file.name}, Pages: ${file.page}, Path: ${file.path}',
                    );
                    await OpenFilex.open(file.path, type: 'application/pdf');
                  },
                );
              },
            ),
    );
  }
}
