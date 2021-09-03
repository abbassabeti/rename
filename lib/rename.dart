import 'package:rename/file_repository.dart';

/// You should call this function in your flutter project root directory
///
FileRepository fileRepository = FileRepository();

enum Platform {
  android,
  ios,
  linux,
  macOS,
}

Future changeAppName(String appName, Iterable<Platform> platforms) async {
  if (platforms.isEmpty || platforms.contains(Platform.ios)) {
    await fileRepository.changeIosAppName(appName);
  }
  if (platforms.isEmpty || platforms.contains(Platform.macOS)) {
    await fileRepository.changeMacOsAppName(appName);
  }
  if (platforms.isEmpty || platforms.contains(Platform.android)) {
    await fileRepository.changeAndroidAppName(appName);
  }
  if (platforms.isEmpty || platforms.contains(Platform.linux)) {
    await fileRepository.changeLinuxAppName(appName);
  }
}

Future changeBundleId(String bundleId, Iterable<Platform> platforms) async {
  if (platforms.isEmpty || platforms.contains(Platform.ios)) {
    await fileRepository.changeIosBundleId(bundleId: bundleId);
  }
  if (platforms.isEmpty || platforms.contains(Platform.macOS)) {
    await fileRepository.changeMacOsBundleId(bundleId: bundleId);
  }
  if (platforms.isEmpty || platforms.contains(Platform.android)) {
    await fileRepository.changeAndroidBundleId(bundleId: bundleId);
  }
  if (platforms.isEmpty || platforms.contains(Platform.linux)) {
    await fileRepository.changeLinuxBundleId(bundleId: bundleId);
  }
}

Future changeFacebookAndroidParams(String appIdKey,String protoclScheme,Iterable<Platform> platforms) async {
  if (platforms.isEmpty || platforms.contains(Platform.android)) {
    await fileRepository.changeAndroidFacebookAppIdKey(appIdKey: appIdKey);
    await fileRepository.changeAndroidFacebookProtocolScheme(protocolScheme: protoclScheme);
  }
}

Future changeFacebookiOSParams(String appId,String clientToken,Iterable<Platform> platforms) async {
  if (platforms.isEmpty || platforms.contains(Platform.ios)) {
    await fileRepository.changeIosFacebookAppId(appId: appId);
    await fileRepository.changeIosFacebookClientToken(clientToken: clientToken);
  }
}

Future changeLauncherIcon(String base64) async {
  await fileRepository.changeLauncherIcon(base64String: base64);
}

Future<String> getIosAppName() async {
  return fileRepository.getCurrentIosAppName();
}

Future<String> getAndroidAppName() async {
  return fileRepository.getCurrentAndroidAppName();
}
