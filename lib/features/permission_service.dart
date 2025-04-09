import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<void> requestPermissions() async {
    try {
      PermissionStatus locationService =
          await Permission.locationWhenInUse.status;
      PermissionStatus cameraService = await Permission.camera.status;
      PermissionStatus galleryService = await Permission.mediaLibrary.status;

      if (locationService.isDenied || locationService.isPermanentlyDenied) {
        Permission.locationWhenInUse.request();
      }
      if (cameraService.isDenied || cameraService.isPermanentlyDenied) {
        Permission.camera.request();
      }
      if (galleryService.isDenied || galleryService.isPermanentlyDenied) {
        Permission.mediaLibrary.request();
      }
    } catch (e) {
      print(e);
      print("There was an error getting permissions");
    }
  }
}
