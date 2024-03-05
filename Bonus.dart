import 'dart:async';
import 'dart:math';

Future<void> simulateFileDownload(String fileUrl) async {
  // Simulate download time with a random delay
  int downloadTime = Random().nextInt(4000) + 1000; // Random delay between 1 to 5 seconds
  await Future.delayed(Duration(milliseconds: downloadTime));
  // Simulate a download issue with a 1 in 5 chance
  if (Random().nextInt(5) == 0) {
    throw Exception('Failed to download $fileUrl');
  }
  print('$fileUrl downloaded successfully in ${downloadTime / 1000} seconds.');
}

Future<void> main() async {
  List<String> fileUrls = [
    'http://example.com/file1',
    'http://example.com/file2',
    'http://example.com/file3',
  ];

  print('Starting downloads...');
  try {
    await Future.wait(fileUrls.map((fileUrl) => simulateFileDownload(fileUrl)));
    print('All files downloaded successfully.');
  } catch (e) {
    print('An error occurred during the download process: $e');
  } finally {
    print('Download process complete.');
  }
}
