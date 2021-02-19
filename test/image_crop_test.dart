import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_crop/image_crop.dart';

void main() {
  const MethodChannel channel = MethodChannel('image_crop');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ImageCrop.platformVersion, '42');
  });
}
