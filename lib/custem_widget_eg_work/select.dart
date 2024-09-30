import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_pickers/image_pickers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Media> _listImagePaths = [];
  List<Media> _listVideoPaths = [];
  List<Media> _listImageVideoPaths = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image and Video Picker'),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              // Display selected images
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _listImagePaths.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      ImagePickers.previewImagesByMedia(_listImagePaths, index);
                    },
                    child: Image.file(
                      File(_listImagePaths[index].path!),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  // Select images from the gallery
                  _listImagePaths = await ImagePickers.pickerPaths(
                    galleryMode: GalleryMode.image,
                    showGif: true,
                    selectCount: 5,
                    showCamera: false, // Disable camera option
                  );
                  setState(() {}); // Refresh UI
                },
                child: Text("Select Images"),
              ),
              // Display selected videos
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _listVideoPaths.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      ImagePickers.previewVideo(_listVideoPaths[index].path!);
                    },
                    child: Image.file(
                      File(_listVideoPaths[index].thumbPath!),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  // Select videos from the gallery
                  _listVideoPaths = await ImagePickers.pickerPaths(
                    galleryMode: GalleryMode.video,
                    videoRecordMinSecond: 3,
                    videoRecordMaxSecond: 10,
                    videoSelectMinSecond: 5,
                    selectCount: 2,
                    showCamera: false, // Disable camera option
                  );
                  setState(() {}); // Refresh UI
                },
                child: Text("Select Videos"),
              ),
              ElevatedButton(
                onPressed: () async {
                  // Select both images and videos from the gallery
                  _listImageVideoPaths = await ImagePickers.pickerPaths(
                    galleryMode: GalleryMode.all,
                    selectCount: 8,
                    showCamera: false, // Disable camera option
                  );
                  setState(() {}); // Refresh UI
                },
                child: Text("Select Images and Videos"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
