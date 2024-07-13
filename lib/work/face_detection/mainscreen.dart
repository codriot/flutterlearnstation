import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if(!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(cameraController.value.isInitialized) {
      return Scaffold(
        body: Stack(
          children: [
            Padding(padding: 
            EdgeInsets.all(20),
            child: Container(
             height: MediaQuery.of(context).size.height*0.7,
             width: MediaQuery.of(context).size.width,
             child: !cameraController.value.isInitialized?
           Container():
           AspectRatio(aspectRatio: cameraController.value.aspectRatio,
           child: CameraPreview(cameraController),),
          ),
          ),
            CameraPreview(cameraController),
            GestureDetector(
              onTap: () {
                setState(() {
                  direction = direction == 0 ? 1 : 0;
                  startCamera(direction);
                });
              },
              child: button(Icons.flip_camera_ios_outlined, Alignment.bottomLeft),
            ),
            GestureDetector(
              onTap: () {
                cameraController.takePicture().then((XFile? file) {
                  if(mounted) {
                    if(file != null) {
                      print("Picture saved to ${file.path}");
                      GallerySaver.saveImage(file.path);
                    }
                  }
                });
              },
              child: button(Icons.camera_alt_outlined, Alignment.bottomCenter),
            ),
            const Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                "Face Detection App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget button(IconData icon, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
        ),
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

}