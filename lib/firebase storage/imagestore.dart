import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: FireHome()));
}

class FireHome extends StatefulWidget {
  const FireHome({Key? key}) : super(key: key);

  @override
  State<FireHome> createState() => _FireHomeState();
}

class _FireHomeState extends State<FireHome> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Storage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () => upload('camera'),
                    icon: Icon(Icons.camera),
                    label: Text("Camera")),
                ElevatedButton.icon(
                    onPressed: () => upload('gallery'),
                    icon: Icon(Icons.photo_library),
                    label: Text("Gallery")),
              ],
            ),
            Expanded(child: FutureBuilder(
              future: loadData(),
              builder: (context,
                  AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final Map<String, dynamic> image = snapshot
                            .data![index];
                        return Card(
                          child: ListTile(
                            leading: Image.network(image['url']),
                            title: Text(image['uploaded_by']),
                            subtitle: Text(image['description']),
                            trailing: IconButton(
                              onPressed: ()=> delete(image['path']),
                              icon: Icon(Icons.delete),),
                          ),
                        );
                      });
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }


  Future<void> upload(String imageip) async {
    final picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imageip == 'camera' ? ImageSource.camera : ImageSource
              .gallery);
      final String fileName = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try {
        //upload to firebase
        await storage.ref(fileName).putFile(
            imagefile, SettableMetadata(customMetadata: {
          "uploaded_by": 'Its me xxxxx',
          'description': 'some description....'
        }));
        //refresh ui
        setState(() {

        });
      } on FirebaseException catch (error) {
        if (kDebugMode) {
          print(error);
        }
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }
  }

  Future<List<Map<String, dynamic>>> loadData() async {
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;

    await Future.forEach(allfiles, (sfile) async {
      final String fileUrl = await sfile.getDownloadURL();
      final FullMetadata fileMeta = await sfile.getMetadata();

      images.add({
        'url': fileUrl,
        'path':sfile.fullPath,
        'uploaded_by': fileMeta.customMetadata?['uploaded_by']??'NoBody',
        'description':fileMeta.customMetadata?['description']??'No Description',
      });
    });
    return images;
  }

  Future<void>delete(String imagepath)async {
    await storage.ref(imagepath).delete();
    setState(() {

    });
  }
}
