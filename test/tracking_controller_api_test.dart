//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for TrackingControllerApi
void main() {
  final instance = TrackingControllerApi();

  group('tests for TrackingControllerApi', () {
    // Create tracking pixel
    //
    // Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
    //
    //Future<TrackingPixelDto> createTrackingPixel(CreateTrackingPixelOptions createTrackingPixelOptions) async
    test('test createTrackingPixel', () async {
      // TODO
    });

    // Get tracking pixels
    //
    // List tracking pixels in paginated form
    //
    //Future<PageTrackingPixelProjection> getAllTrackingPixels({ DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async
    test('test getAllTrackingPixels', () async {
      // TODO
    });

    // Get pixel
    //
    //Future<TrackingPixelDto> getTrackingPixel(String id) async
    test('test getTrackingPixel', () async {
      // TODO
    });

  });
}
