//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for SentEmailsControllerApi
void main() {
  // final instance = SentEmailsControllerApi();

  group('tests for SentEmailsControllerApi', () {
    // Delete all sent email receipts
    //
    //Future deleteAllSentEmails() async
    test('test deleteAllSentEmails', () async {
      // TODO
    });

    // Delete sent email receipt
    //
    //Future deleteSentEmail(String id) async
    test('test deleteSentEmail', () async {
      // TODO
    });

    // Get all sent email tracking pixels in paginated form
    //
    //Future<PageTrackingPixelProjection> getAllSentTrackingPixels({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getAllSentTrackingPixels', () async {
      // TODO
    });

    // Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
    //
    // Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
    //
    //Future getRawSentEmailContents(String emailId) async
    test('test getRawSentEmailContents', () async {
      // TODO
    });

    // Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
    //
    // Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
    //
    //Future<RawEmailJson> getRawSentEmailJson(String emailId) async
    test('test getRawSentEmailJson', () async {
      // TODO
    });

    // Get a sent email delivery status
    //
    //Future<DeliveryStatusDto> getSentDeliveryStatus(String deliveryId) async
    test('test getSentDeliveryStatus', () async {
      // TODO
    });

    // Get all sent email delivery statuses
    //
    //Future<PageDeliveryStatus> getSentDeliveryStatuses({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getSentDeliveryStatuses', () async {
      // TODO
    });

    // Get all sent email delivery statuses
    //
    //Future<PageDeliveryStatus> getSentDeliveryStatusesBySentId(String sentId, { int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getSentDeliveryStatusesBySentId', () async {
      // TODO
    });

    // Get sent email receipt
    //
    //Future<SentEmailDto> getSentEmail(String id) async
    test('test getSentEmail', () async {
      // TODO
    });

    // Get sent email HTML content
    //
    //Future<String> getSentEmailHTMLContent(String id) async
    test('test getSentEmailHTMLContent', () async {
      // TODO
    });

    // Get sent email URL for viewing in browser or downloading
    //
    // Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
    //
    //Future<EmailPreviewUrls> getSentEmailPreviewURLs(String id) async
    test('test getSentEmailPreviewURLs', () async {
      // TODO
    });

    // Get all tracking pixels for a sent email in paginated form
    //
    //Future<PageTrackingPixelProjection> getSentEmailTrackingPixels(String id, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getSentEmailTrackingPixels', () async {
      // TODO
    });

    // Get all sent emails in paginated form
    //
    //Future<PageSentEmailProjection> getSentEmails({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getSentEmails', () async {
      // TODO
    });

    // Get results of email sent with queues in paginated form
    //
    //Future<PageSentEmailWithQueueProjection> getSentEmailsWithQueueResults({ int page, int size, String sort, DateTime since, DateTime before }) async
    test('test getSentEmailsWithQueueResults', () async {
      // TODO
    });

    // Get all sent organization emails in paginated form
    //
    //Future<PageSentEmailProjection> getSentOrganizationEmails({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getSentOrganizationEmails', () async {
      // TODO
    });

    // Wait for delivery statuses
    //
    //Future<DeliveryStatusDto> waitForDeliveryStatuses({ String sentId, String inboxId, int timeout, int index, DateTime since, DateTime before }) async
    test('test waitForDeliveryStatuses', () async {
      // TODO
    });

  });
}
