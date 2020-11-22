import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for EmailControllerApi
void main() {
  var instance = EmailControllerApi();

  group('tests for EmailControllerApi', () {
    // Delete all emails
    //
    // Deletes all emails in your account. Be careful as emails cannot be recovered
    //
    //Future deleteAllEmails() async 
    test('test deleteAllEmails', () async {
      // TODO
    });

    // Delete an email
    //
    // Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
    //
    //Future deleteEmail(String emailId) async 
    test('test deleteEmail', () async {
      // TODO
    });

    // Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
    //
    // Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    //
    //Future<String> downloadAttachment(String attachmentId, String emailId, { String apiKey }) async 
    test('test downloadAttachment', () async {
      // TODO
    });

    // Get email attachment as base64 encoded string (alternative to binary responses)
    //
    // Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
    //
    //Future<DownloadAttachmentDto> downloadAttachmentBase64(String attachmentId, String emailId) async 
    test('test downloadAttachmentBase64', () async {
      // TODO
    });

    // Forward email
    //
    // Forward an existing email to new recipients.
    //
    //Future forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions) async 
    test('test forwardEmail', () async {
      // TODO
    });

    // Get email attachment metadata
    //
    // Returns the metadata such as name and content-type for a given attachment and email.
    //
    //Future<AttachmentMetaData> getAttachmentMetaData(String attachmentId, String emailId) async 
    test('test getAttachmentMetaData', () async {
      // TODO
    });

    // Get all email attachment metadata
    //
    // Returns an array of attachment metadata such as name and content-type for a given email if present.
    //
    //Future<List<AttachmentMetaData>> getAttachments(String emailId) async 
    test('test getAttachments', () async {
      // TODO
    });

    // Get email content
    //
    // Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
    //
    //Future<Email> getEmail(String emailId, { bool decode }) async 
    test('test getEmail', () async {
      // TODO
    });

    // Get email content regex pattern match results. Runs regex against email body and returns match groups.
    //
    // Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns.
    //
    //Future<EmailContentMatchResult> getEmailContentMatch(String emailId, ContentMatchOptions contentMatchOptions) async 
    test('test getEmailContentMatch', () async {
      // TODO
    });

    // Get email content as HTML
    //
    // Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
    //
    //Future<String> getEmailHTML(String emailId, { bool decode }) async 
    test('test getEmailHTML', () async {
      // TODO
    });

    // Get all emails
    //
    // By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    //
    //Future<PageEmailProjection> getEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async 
    test('test getEmailsPaginated', () async {
      // TODO
    });

    // Get raw email string
    //
    // Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
    //
    //Future<String> getRawEmailContents(String emailId) async 
    test('test getRawEmailContents', () async {
      // TODO
    });

    // Get raw email in JSON
    //
    // Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
    //
    //Future<RawEmailJson> getRawEmailJson(String emailId) async 
    test('test getRawEmailJson', () async {
      // TODO
    });

    // Get unread email count
    //
    // Get number of emails unread
    //
    //Future<UnreadCount> getUnreadEmailCount() async 
    test('test getUnreadEmailCount', () async {
      // TODO
    });

    // Validate email
    //
    // Validate the HTML content of email if HTML is found. Considered valid if no HTML.
    //
    //Future<ValidationDto> validateEmail(String emailId) async 
    test('test validateEmail', () async {
      // TODO
    });

  });
}
