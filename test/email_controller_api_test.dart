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


/// tests for EmailControllerApi
void main() {
  // final instance = EmailControllerApi();

  group('tests for EmailControllerApi', () {
    // Set IMAP flags associated with a message. Only supports '\\Seen' flag.
    //
    // Apply RFC3501 section-2.3.2 IMAP flag operations on an email
    //
    //Future<EmailPreview> applyImapFlagOperation(String emailId, ImapFlagOperationOptions imapFlagOperationOptions) async
    test('test applyImapFlagOperation', () async {
      // TODO
    });

    // Check if email can be sent and options are valid.
    //
    // Can user send email to given recipient or is the recipient blocked
    //
    //Future<CanSendEmailResults> canSend(String inboxId, SendEmailOptions sendEmailOptions) async
    test('test canSend', () async {
      // TODO
    });

    // Detect broken links, spelling, and images in email content
    //
    // Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.
    //
    //Future<CheckEmailBodyResults> checkEmailBody(String emailId) async
    test('test checkEmailBody', () async {
      // TODO
    });

    // Show which mail clients support the HTML and CSS features used in an email body.
    //
    // Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.
    //
    //Future<CheckEmailBodyFeatureSupportResults> checkEmailBodyFeatureSupport(String emailId) async
    test('test checkEmailBodyFeatureSupport', () async {
      // TODO
    });

    // Show which email programs and devices support the features used in an email body.
    //
    // Evaluate the features used in an email body and return a report of email client support across different platforms and versions.
    //
    //Future<CheckEmailClientSupportResults> checkEmailClientSupport(CheckEmailClientSupportOptions checkEmailClientSupportOptions) async
    test('test checkEmailClientSupport', () async {
      // TODO
    });

    // Delete all emails in all inboxes.
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

    // Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
    //
    // Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    //
    //Future<String> downloadAttachment(String emailId, String attachmentId, { String apiKey }) async
    test('test downloadAttachment', () async {
      // TODO
    });

    // Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
    //
    // Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
    //
    //Future<DownloadAttachmentDto> downloadAttachmentBase64(String emailId, String attachmentId) async
    test('test downloadAttachmentBase64', () async {
      // TODO
    });

    // Get email body as string. Returned as `plain/text` with content type header.
    //
    // Returns the specified email body for a given email as a string
    //
    //Future<String> downloadBody(String emailId) async
    test('test downloadBody', () async {
      // TODO
    });

    // Get email body in bytes. Returned as `octet-stream` with content type header.
    //
    // Returns the specified email body for a given email as a stream / array of bytes.
    //
    //Future<String> downloadBodyBytes(String emailId) async
    test('test downloadBodyBytes', () async {
      // TODO
    });

    // Forward email to recipients
    //
    // Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.
    //
    //Future<SentEmailDto> forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions) async
    test('test forwardEmail', () async {
      // TODO
    });

    // Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
    //
    // Returns the metadata such as name and content-type for a given attachment and email.
    //
    //Future<AttachmentMetaData> getAttachmentMetaData(String emailId, String attachmentId) async
    test('test getAttachmentMetaData', () async {
      // TODO
    });

    // Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
    //
    // Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
    //
    //Future<Email> getEmail(String emailId, { bool decode }) async
    test('test getEmail', () async {
      // TODO
    });

    // Get all email attachment metadata. Metadata includes name and size of attachments.
    //
    // Returns an array of attachment metadata such as name and content-type for a given email if present.
    //
    //Future<List<AttachmentMetaData>> getEmailAttachments(String emailId) async
    test('test getEmailAttachments', () async {
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

    // Get email content part by content type
    //
    // Get email body content parts from a multipart email message for a given content type
    //
    //Future<EmailContentPartResult> getEmailContentPart(String emailId, String contentType) async
    test('test getEmailContentPart', () async {
      // TODO
    });

    // Get email count
    //
    //Future<CountDto> getEmailCount() async
    test('test getEmailCount', () async {
      // TODO
    });

    // Get email content as HTML. For displaying emails in browser context.
    //
    // Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.
    //
    //Future<String> getEmailHTML(String emailId, { bool decode, bool replaceCidImages }) async
    test('test getEmailHTML', () async {
      // TODO
    });

    // Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
    //
    // Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.
    //
    //Future<EmailHtmlDto> getEmailHTMLJson(String emailId, { bool decode, bool replaceCidImages }) async
    test('test getEmailHTMLJson', () async {
      // TODO
    });

    // Parse and return text from an email, stripping HTML and decoding encoded characters
    //
    // Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
    //
    //Future<EmailTextLinesResult> getEmailHTMLQuery(String emailId, String htmlSelector) async
    test('test getEmailHTMLQuery', () async {
      // TODO
    });

    // Parse and return list of links found in an email (only works for HTML content)
    //
    // HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes
    //
    //Future<EmailLinksResult> getEmailLinks(String emailId) async
    test('test getEmailLinks', () async {
      // TODO
    });

    // Get email URLs for viewing in browser or downloading
    //
    // Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.
    //
    //Future<EmailPreviewUrls> getEmailPreviewURLs(String emailId) async
    test('test getEmailPreviewURLs', () async {
      // TODO
    });

    // Parse and return text from an email, stripping HTML and decoding encoded characters
    //
    // Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.
    //
    //Future<EmailTextLinesResult> getEmailTextLines(String emailId, { bool decodeHtmlEntities, String lineSeparator }) async
    test('test getEmailTextLines', () async {
      // TODO
    });

    // Get all emails in all inboxes in paginated form. Email API list all.
    //
    // By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    //
    //Future<PageEmailProjection> getEmailsOffsetPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before }) async
    test('test getEmailsOffsetPaginated', () async {
      // TODO
    });

    // Get all emails in all inboxes in paginated form. Email API list all.
    //
    // By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    //
    //Future<PageEmailProjection> getEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before }) async
    test('test getEmailsPaginated', () async {
      // TODO
    });

    // Get gravatar url for email address
    //
    //Future<GravatarUrl> getGravatarUrlForEmailAddress(String emailAddress, { String size }) async
    test('test getGravatarUrlForEmailAddress', () async {
      // TODO
    });

    // Get latest email in all inboxes. Most recently received.
    //
    // Get the newest email in all inboxes or in a passed set of inbox IDs
    //
    //Future<Email> getLatestEmail({ List<String> inboxIds }) async
    test('test getLatestEmail', () async {
      // TODO
    });

    // Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
    //
    // Get the newest email in all inboxes or in a passed set of inbox IDs
    //
    //Future<Email> getLatestEmailInInbox1(String inboxId) async
    test('test getLatestEmailInInbox1', () async {
      // TODO
    });

    // Get all organization emails. List team or shared test email accounts
    //
    // By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    //
    //Future<PageEmailProjection> getOrganizationEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before }) async
    test('test getOrganizationEmailsPaginated', () async {
      // TODO
    });

    // Get raw email string. Returns unparsed raw SMTP message with headers and body.
    //
    // Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
    //
    //Future getRawEmailContents(String emailId) async
    test('test getRawEmailContents', () async {
      // TODO
    });

    // Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
    //
    // Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
    //
    //Future<RawEmailJson> getRawEmailJson(String emailId) async
    test('test getRawEmailJson', () async {
      // TODO
    });

    // Get unread email count
    //
    // Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
    //
    //Future<UnreadCount> getUnreadEmailCount() async
    test('test getUnreadEmailCount', () async {
      // TODO
    });

    // Mark an email as read on unread
    //
    // Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
    //
    //Future<EmailPreview> markAsRead(String emailId, { bool read }) async
    test('test markAsRead', () async {
      // TODO
    });

    // Reply to an email
    //
    // Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
    //
    //Future<SentEmailDto> replyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions) async
    test('test replyToEmail', () async {
      // TODO
    });

    // Get all emails by search criteria. Return in paginated form.
    //
    // Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body
    //
    //Future<PageEmailProjection> searchEmails(SearchEmailsOptions searchEmailsOptions) async
    test('test searchEmails', () async {
      // TODO
    });

    // Send email
    //
    // Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.
    //
    //Future sendEmailSourceOptional(SendEmailOptions sendEmailOptions, { String inboxId, bool useDomainPool, bool virtualSend }) async
    test('test sendEmailSourceOptional', () async {
      // TODO
    });

    // Validate email HTML contents
    //
    // Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.
    //
    //Future<ValidationDto> validateEmail(String emailId) async
    test('test validateEmail', () async {
      // TODO
    });

  });
}
