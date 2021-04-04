import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';


class PersonImageScreen extends StatelessWidget {
  final imageLink;
  const PersonImageScreen({Key key, this.imageLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Image Saved To Gallery!'),
      action: SnackBarAction(
        label: 'close',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Person Image"),
        ),
        body:SingleChildScrollView(
            child: Column(
              children: [
                Image.network(imageLink),
              ],
            )
        )

       ,

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _downloadImage(imageLink);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          },
          label: const Text('Download'),
          icon: const Icon(Icons.download_sharp),
        )

    );
  }

  Future<void> _downloadImage(
      String url, {
        AndroidDestinationType destination,
        bool whenError = false,
        String outputMimeType,

      }) async {

      var imageId = await ImageDownloader.downloadImage(imageLink);
      if (imageId == null) {
        return false;
      }else{
        return true;
      }
  }


}








