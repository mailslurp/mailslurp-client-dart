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
    // Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.
    //
    //Future<EmailPreview> applyImapFlagOperation(String emailId, ImapFlagOperationOptions imapFlagOperationOptions) async
    test('test applyImapFlagOperation', () async {
      // TODO
    });

    // Check whether an email send would be accepted
    //
    // Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.
    //
    //Future<CanSendEmailResults> canSend(String inboxId, SendEmailOptions sendEmailOptions) async
    test('test canSend', () async {
      // TODO
    });

    // Check email body for broken links, images, and spelling issues
    //
    // Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.
    //
    //Future<CheckEmailBodyResults> checkEmailBody(String emailId) async
    test('test checkEmailBody', () async {
      // TODO
    });

    // Check client support for features used in a stored email body
    //
    // Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.
    //
    //Future<CheckEmailBodyFeatureSupportResults> checkEmailBodyFeatureSupport(String emailId) async
    test('test checkEmailBodyFeatureSupport', () async {
      // TODO
    });

    // Check email-client support for a provided HTML body
    //
    // Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.
    //
    //Future<CheckEmailClientSupportResults> checkEmailClientSupport(CheckEmailClientSupportOptions checkEmailClientSupportOptions) async
    test('test checkEmailClientSupport', () async {
      // TODO
    });

    // Delete all emails in all inboxes.
    //
    // Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.
    //
    //Future deleteAllEmails() async
    test('test deleteAllEmails', () async {
      // TODO
    });

    // Delete an email
    //
    // Deletes a single email from account scope. Operation is destructive and not reversible.
    //
    //Future deleteEmail(String emailId) async
    test('test deleteEmail', () async {
      // TODO
    });

    // Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
    //
    // Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.
    //
    //Future<String> downloadAttachment(String emailId, String attachmentId, { String apiKey }) async
    test('test downloadAttachment', () async {
      // TODO
    });

    // Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
    //
    // Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.
    //
    //Future<DownloadAttachmentDto> downloadAttachmentBase64(String emailId, String attachmentId) async
    test('test downloadAttachmentBase64', () async {
      // TODO
    });

    // Get email body as string. Returned as `plain/text` with content type header.
    //
    // Returns hydrated email body text as a string with content type aligned to the underlying body format.
    //
    //Future<String> downloadBody(String emailId) async
    test('test downloadBody', () async {
      // TODO
    });

    // Get email body in bytes. Returned as `octet-stream` with content type header.
    //
    // Streams hydrated email body bytes with content type derived from the message body format.
    //
    //Future<String> downloadBodyBytes(String emailId) async
    test('test downloadBodyBytes', () async {
      // TODO
    });

    // Forward email to recipients
    //
    // Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.
    //
    //Future<SentEmailDto> forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions) async
    test('test forwardEmail', () async {
      // TODO
    });

    // Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
    //
    // Returns metadata for a specific attachment ID (name, content type, and size fields).
    //
    //Future<AttachmentMetaData> getAttachmentMetaData(String emailId, String attachmentId) async
    test('test getAttachmentMetaData', () async {
      // TODO
    });

    // Get hydrated email (headers and body)
    //
    // Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.
    //
    //Future<Email> getEmail(String emailId) async
    test('test getEmail', () async {
      // TODO
    });

    // List attachment metadata for an email
    //
    // Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).
    //
    //Future<List<AttachmentMetaData>> getEmailAttachments(String emailId) async
    test('test getEmailAttachments', () async {
      // TODO
    });

    // Extract verification codes from an email
    //
    // Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.
    //
    //Future<ExtractCodesResult> getEmailCodes(String emailId, { ExtractCodesOptions extractCodesOptions }) async
    test('test getEmailCodes', () async {
      // TODO
    });

    // Run regex against hydrated email body and return matches
    //
    // Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.
    //
    //Future<EmailContentMatchResult> getEmailContentMatch(String emailId, ContentMatchOptions contentMatchOptions) async
    test('test getEmailContentMatch', () async {
      // TODO
    });

    // Get email content part by content type
    //
    // Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.
    //
    //Future<EmailContentPartResult> getEmailContentPart(String emailId, String contentType, { bool strict, int index }) async
    test('test getEmailContentPart', () async {
      // TODO
    });

    // Get multipart content part as raw response
    //
    // Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.
    //
    //Future<String> getEmailContentPartContent(String emailId, String contentType, { bool strict, int index }) async
    test('test getEmailContentPartContent', () async {
      // TODO
    });

    // Get email count
    //
    // Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.
    //
    //Future<CountDto> getEmailCount({ String inboxId }) async
    test('test getEmailCount', () async {
      // TODO
    });

    // Get hydrated email HTML for browser rendering
    //
    // Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.
    //
    //Future<String> getEmailHTML(String emailId, { bool replaceCidImages }) async
    test('test getEmailHTML', () async {
      // TODO
    });

    // Get hydrated email HTML wrapped in JSON
    //
    // Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.
    //
    //Future<EmailHtmlDto> getEmailHTMLJson(String emailId, { bool replaceCidImages }) async
    test('test getEmailHTMLJson', () async {
      // TODO
    });

    // Query hydrated HTML body and return matching text lines
    //
    // Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.
    //
    //Future<EmailTextLinesResult> getEmailHTMLQuery(String emailId, String htmlSelector) async
    test('test getEmailHTMLQuery', () async {
      // TODO
    });

    // Extract links from an email HTML body
    //
    // Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.
    //
    //Future<EmailLinksResult> getEmailLinks(String emailId, { String selector }) async
    test('test getEmailLinks', () async {
      // TODO
    });

    // Get email URLs for viewing in browser or downloading
    //
    // Returns precomputed URLs for preview and raw message access for the specified email.
    //
    //Future<EmailPreviewUrls> getEmailPreviewURLs(String emailId) async
    test('test getEmailPreviewURLs', () async {
      // TODO
    });

    // Take a screenshot of an email in a browser and return base64 encoded string
    //
    // Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.
    //
    //Future<EmailScreenshotResult> getEmailScreenshotAsBase64(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions) async
    test('test getEmailScreenshotAsBase64', () async {
      // TODO
    });

    // Take a screenshot of an email in a browser
    //
    // Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.
    //
    //Future getEmailScreenshotAsBinary(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions) async
    test('test getEmailScreenshotAsBinary', () async {
      // TODO
    });

    // Extract signature from an inbound email
    //
    // Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.
    //
    //Future<EmailSignatureParseResult> getEmailSignature(String emailId) async
    test('test getEmailSignature', () async {
      // TODO
    });

    // Get email summary (headers/metadata only)
    //
    // Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.
    //
    //Future<EmailPreview> getEmailSummary(String emailId, { bool decode }) async
    test('test getEmailSummary', () async {
      // TODO
    });

    // Extract normalized text lines from email body
    //
    // Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.
    //
    //Future<EmailTextLinesResult> getEmailTextLines(String emailId, { bool decodeHtmlEntities, String lineSeparator }) async
    test('test getEmailTextLines', () async {
      // TODO
    });

    // Get email thread metadata by thread ID
    //
    // Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.
    //
    //Future<EmailThreadDto> getEmailThread(String threadId) async
    test('test getEmailThread', () async {
      // TODO
    });

    // Get messages in a specific email thread
    //
    // Returns all messages in a thread ordered by `createdAt` using the requested sort direction.
    //
    //Future<EmailThreadItemsDto> getEmailThreadItems(String threadId, { String sort }) async
    test('test getEmailThreadItems', () async {
      // TODO
    });

    // List email threads in paginated form
    //
    // Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.
    //
    //Future<PageEmailThreadProjection> getEmailThreads({ String htmlSelector, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async
    test('test getEmailThreads', () async {
      // TODO
    });

    // Get all emails in all inboxes in paginated form. Email API list all.
    //
    // Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.
    //
    //Future<PageEmailProjection> getEmailsOffsetPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before, bool favourited, bool syncConnectors, String plusAddressId, List<String> include }) async
    test('test getEmailsOffsetPaginated', () async {
      // TODO
    });

    // Get all emails in all inboxes in paginated form. Email API list all.
    //
    // Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.
    //
    //Future<PageEmailProjection> getEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before, bool syncConnectors, String plusAddressId, bool favourited }) async
    test('test getEmailsPaginated', () async {
      // TODO
    });

    // Get Gravatar URL for an email address
    //
    // Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.
    //
    //Future<GravatarUrl> getGravatarUrlForEmailAddress(String emailAddress, { String size }) async
    test('test getGravatarUrlForEmailAddress', () async {
      // TODO
    });

    // Get latest email in all inboxes. Most recently received.
    //
    // Returns the most recently received email across all inboxes or an optional subset of inbox IDs.
    //
    //Future<Email> getLatestEmail({ List<String> inboxIds }) async
    test('test getLatestEmail', () async {
      // TODO
    });

    // Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
    //
    // Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.
    //
    //Future<Email> getLatestEmailInInbox1(String inboxId) async
    test('test getLatestEmailInInbox1', () async {
      // TODO
    });

    // List organization-visible emails
    //
    // Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.
    //
    //Future<PageEmailProjection> getOrganizationEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly, String searchFilter, DateTime since, DateTime before, bool syncConnectors, bool favourited, String plusAddressId }) async
    test('test getOrganizationEmailsPaginated', () async {
      // TODO
    });

    // Get raw email string. Returns unparsed raw SMTP message with headers and body.
    //
    // Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.
    //
    //Future getRawEmailContents(String emailId) async
    test('test getRawEmailContents', () async {
      // TODO
    });

    // Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
    //
    // Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.
    //
    //Future<RawEmailJson> getRawEmailJson(String emailId) async
    test('test getRawEmailJson', () async {
      // TODO
    });

    // Get unread email count
    //
    // Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.
    //
    //Future<UnreadCount> getUnreadEmailCount({ String inboxId }) async
    test('test getUnreadEmailCount', () async {
      // TODO
    });

    // Mark all emails as read or unread
    //
    // Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.
    //
    //Future markAllAsRead({ bool read, String inboxId }) async
    test('test markAllAsRead', () async {
      // TODO
    });

    // Mark an email as read or unread
    //
    // Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.
    //
    //Future<EmailPreview> markAsRead(String emailId, { bool read }) async
    test('test markAsRead', () async {
      // TODO
    });

    // Reply to an email
    //
    // Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.
    //
    //Future<SentEmailDto> replyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions) async
    test('test replyToEmail', () async {
      // TODO
    });

    // Get all emails by search criteria. Return in paginated form.
    //
    // Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.
    //
    //Future<PageEmailProjection> searchEmails(SearchEmailsOptions searchEmailsOptions, { bool syncConnectors, bool favourited, String plusAddressId }) async
    test('test searchEmails', () async {
      // TODO
    });

    // Send email
    //
    // Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.
    //
    //Future sendEmailSourceOptional(SendEmailOptions sendEmailOptions, { String inboxId, bool useDomainPool, bool virtualSend }) async
    test('test sendEmailSourceOptional', () async {
      // TODO
    });

    // Set email favourited state
    //
    // Sets favourite state for an email for dashboard/search workflows.
    //
    //Future setEmailFavourited(String emailId, bool favourited) async
    test('test setEmailFavourited', () async {
      // TODO
    });

    // Validate email HTML contents
    //
    // Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.
    //
    //Future<ValidationDto> validateEmail(String emailId) async
    test('test validateEmail', () async {
      // TODO
    });

  });
}
