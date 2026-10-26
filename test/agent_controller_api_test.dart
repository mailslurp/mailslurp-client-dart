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


/// tests for AgentControllerApi
void main() {
  // final instance = AgentControllerApi();

  group('tests for AgentControllerApi', () {
    // Acquire a renewable conversation claim
    //
    // Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.
    //
    //Future<AgentConversationClaimDto> agentAcquireConversationClaim(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions) async
    test('test agentAcquireConversationClaim', () async {
      // TODO
    });

    // Add an internal conversation note
    //
    // Adds agent/operator collaboration context without sending any email to the customer.
    //
    //Future<AgentConversationNoteDto> agentAddConversationNote(String conversationId, CreateAgentConversationNoteOptions createAgentConversationNoteOptions) async
    test('test agentAddConversationNote', () async {
      // TODO
    });

    // Add an internal SMS conversation note
    //
    //Future<AgentConversationNoteDto> agentAddSmsNote(String conversationId, CreateAgentSmsConversationNoteOptions createAgentSmsConversationNoteOptions) async
    test('test agentAddSmsNote', () async {
      // TODO
    });

    // Check whether sending rules allow recipients
    //
    // Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.
    //
    //Future<AgentInboxSendPolicyDto> agentCheckInboxSendPolicy(String inboxId, AgentInboxSendPolicyCheckOptions agentInboxSendPolicyCheckOptions) async
    test('test agentCheckInboxSendPolicy', () async {
      // TODO
    });

    // Acquire an SMS conversation claim
    //
    //Future<AgentConversationClaimDto> agentClaimSmsConversation(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions) async
    test('test agentClaimSmsConversation', () async {
      // TODO
    });

    // Complete a work item with an idempotent reply
    //
    // Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.
    //
    //Future<AgentCompletedWorkItemDto> agentCompleteWorkItem(String conversationId, CompleteAgentWorkItemOptions completeAgentWorkItemOptions) async
    test('test agentCompleteWorkItem', () async {
      // TODO
    });

    // Create a scoped email draft for an agent
    //
    // Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.
    //
    //Future<EmailDraftDto> agentCreateEmailDraft(String inboxId, SendEmailOptions sendEmailOptions, { String sourceEmailId }) async
    test('test agentCreateEmailDraft', () async {
      // TODO
    });

    // Create an inbox with an account-wide inbox-manager connection
    //
    // Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.
    //
    //Future<InboxDto> agentCreateInbox(CreateInboxDto createInboxDto) async
    test('test agentCreateInbox', () async {
      // TODO
    });

    // Create a correctly threaded reply draft
    //
    // Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.
    //
    //Future<EmailDraftDto> agentCreateReplyDraft(String emailId, ReplyToEmailOptions replyToEmailOptions) async
    test('test agentCreateReplyDraft', () async {
      // TODO
    });

    // Create an agent-managed TOTP device from a base32 secret key
    //
    //Future<TotpDeviceDto> agentCreateTotpDeviceForBase32SecretKey(CreateTotpDeviceBase32SecretKeyOptions createTotpDeviceBase32SecretKeyOptions) async
    test('test agentCreateTotpDeviceForBase32SecretKey', () async {
      // TODO
    });

    // Create an agent-managed TOTP device from custom options
    //
    //Future<TotpDeviceDto> agentCreateTotpDeviceForCustom(CreateTotpDeviceCustomOptions createTotpDeviceCustomOptions) async
    test('test agentCreateTotpDeviceForCustom', () async {
      // TODO
    });

    // Create an agent-managed TOTP device from an OTP Auth URL
    //
    //Future<TotpDeviceDto> agentCreateTotpDeviceForOtpAuthUrl(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions) async
    test('test agentCreateTotpDeviceForOtpAuthUrl', () async {
      // TODO
    });

    // Defer a work item to human review
    //
    // Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.
    //
    //Future<AgentDeferredWorkItemDto> agentDeferWorkItem(String conversationId, DeferAgentWorkItemOptions deferAgentWorkItemOptions) async
    test('test agentDeferWorkItem', () async {
      // TODO
    });

    // Delete a scoped email draft for an agent
    //
    // Deletes a saved draft without sending it.
    //
    //Future agentDeleteEmailDraft(String inboxId, String draftId) async
    test('test agentDeleteEmailDraft', () async {
      // TODO
    });

    // Delete an agent-managed TOTP device
    //
    //Future agentDeleteTotpDevice(String id) async
    test('test agentDeleteTotpDevice', () async {
      // TODO
    });

    // Extract text from a scoped email attachment for an agent
    //
    // Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.
    //
    //Future<ExtractAttachmentTextResult> agentExtractEmailAttachmentText(String emailId, String attachmentId, { ExtractAttachmentTextOptions extractAttachmentTextOptions }) async
    test('test agentExtractEmailAttachmentText', () async {
      // TODO
    });

    // Generate a code for an agent-managed TOTP device
    //
    //Future<TotpDeviceCodeDto> agentGenerateTotpDeviceCode(String id, { DateTime at, int minSecondsUntilExpire }) async
    test('test agentGenerateTotpDeviceCode', () async {
      // TODO
    });

    // Discover this agent connection's capabilities
    //
    // Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.
    //
    //Future<AgentCapabilitiesDto> agentGetCapabilities() async
    test('test agentGetCapabilities', () async {
      // TODO
    });

    // Get one scoped conversation
    //
    // Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.
    //
    //Future<AgentConversationDetailV2Dto> agentGetConversationV2(String conversationId) async
    test('test agentGetConversationV2', () async {
      // TODO
    });

    // Get scoped hydrated email for an agent
    //
    // Returns parsed email content after resolving the message inbox and checking agent scope.
    //
    //Future<Email> agentGetEmail(String emailId) async
    test('test agentGetEmail', () async {
      // TODO
    });

    // Get a scoped email draft for an agent
    //
    // Returns a saved draft including the full SendEmailOptions payload.
    //
    //Future<EmailDraftDto> agentGetEmailDraft(String inboxId, String draftId) async
    test('test agentGetEmailDraft', () async {
      // TODO
    });

    // Get scoped email summary for an agent
    //
    // Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.
    //
    //Future<EmailPreview> agentGetEmailSummary(String emailId) async
    test('test agentGetEmailSummary', () async {
      // TODO
    });

    // Get a scoped email thread for an agent
    //
    // Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.
    //
    //Future<ScopedEmailThread> agentGetEmailThread(String emailId, { String sort }) async
    test('test agentGetEmailThread', () async {
      // TODO
    });

    // Get latest scoped inbox email for an agent
    //
    // Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.
    //
    //Future<Email> agentGetLatestInboxEmail(String inboxId, { int timeoutMillis, bool unreadOnly, DateTime since, DateTime before }) async
    test('test agentGetLatestInboxEmail', () async {
      // TODO
    });

    // Claim the next conversation work item
    //
    // Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.
    //
    //Future<AgentWorkItemDto> agentGetNextWorkItem(GetNextAgentWorkItemOptions getNextAgentWorkItemOptions) async
    test('test agentGetNextWorkItem', () async {
      // TODO
    });

    // List SMS thread messages
    //
    //Future<PagePhoneMessageThreadItemProjection> agentGetPhoneMessageThreadItems(String phoneNumberId, String otherPhoneNumber, { int page, int size }) async
    test('test agentGetPhoneMessageThreadItems', () async {
      // TODO
    });

    // List SMS threads
    //
    //Future<PagePhoneMessageThreadProjection> agentGetPhoneMessageThreads(String phoneNumberId, { int page, int size }) async
    test('test agentGetPhoneMessageThreads', () async {
      // TODO
    });

    // Get an assigned phone number
    //
    //Future<PhoneNumberDto> agentGetPhoneNumber(String phoneNumberId) async
    test('test agentGetPhoneNumber', () async {
      // TODO
    });

    // List assigned phone numbers
    //
    // Returns only active phone numbers explicitly assigned to this agent connection.
    //
    //Future<PageAgentPhoneNumber> agentGetPhoneNumbers({ int page, int size, String sort, String search }) async
    test('test agentGetPhoneNumbers', () async {
      // TODO
    });

    // Get received SMS
    //
    //Future<SmsDto> agentGetReceivedSmsMessage(String phoneNumberId, String smsId) async
    test('test agentGetReceivedSmsMessage', () async {
      // TODO
    });

    // List received SMS for an assigned phone number
    //
    //Future<PageSmsProjection> agentGetReceivedSmsMessages(String phoneNumberId, { int page, int size, String sort, DateTime since, DateTime before, String search, bool favourite }) async
    test('test agentGetReceivedSmsMessages', () async {
      // TODO
    });

    // Get sent SMS
    //
    //Future<SentSmsDto> agentGetSentSmsMessage(String phoneNumberId, String sentSmsId) async
    test('test agentGetSentSmsMessage', () async {
      // TODO
    });

    // List sent SMS for an assigned phone number
    //
    //Future<PageSentSmsProjection> agentGetSentSmsMessages(String phoneNumberId, { int page, int size, String sort, DateTime since, DateTime before, String search }) async
    test('test agentGetSentSmsMessages', () async {
      // TODO
    });

    // Get one SMS conversation
    //
    //Future<AgentSmsConversationDetailDto> agentGetSmsConversation(String conversationId) async
    test('test agentGetSmsConversation', () async {
      // TODO
    });

    // Get an agent-accessible TOTP device
    //
    //Future<TotpDeviceDto> agentGetTotpDevice(String id) async
    test('test agentGetTotpDevice', () async {
      // TODO
    });

    // Find an agent-accessible TOTP device by name, issuer, or username
    //
    //Future<TotpDeviceOptionalDto> agentGetTotpDeviceBy({ String name, String issuer, String username }) async
    test('test agentGetTotpDeviceBy', () async {
      // TODO
    });

    // List agent-accessible TOTP devices
    //
    //Future<PageTotpDeviceProjection> agentGetTotpDevices({ int page, int size, String sort, String issuer, String username }) async
    test('test agentGetTotpDevices', () async {
      // TODO
    });

    // List inboxes accessible to an agent
    //
    // Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.
    //
    //Future<AccessibleInboxList> agentListAccessibleInboxes({ int size, String sort }) async
    test('test agentListAccessibleInboxes', () async {
      // TODO
    });

    // Read durable scoped automation events
    //
    // Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.
    //
    //Future<AgentAutomationEventPageDto> agentListAutomationEvents({ String cursor, Set<String> eventType, int size, int waitSeconds }) async
    test('test agentListAutomationEvents', () async {
      // TODO
    });

    // List active conversations with an opaque keyset cursor
    //
    // Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.
    //
    //Future<AgentConversationCursorPageDto> agentListConversationsV2({ String workflowState, String outcome, String reviewStatus, String inboxId, bool unread, bool hasAttachments, DateTime since, DateTime before, String search, String sort, String cursor, int size }) async
    test('test agentListConversationsV2', () async {
      // TODO
    });

    // List attachments on a scoped email for an agent
    //
    // Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.
    //
    //Future<List<AttachmentMetaData>> agentListEmailAttachments(String emailId) async
    test('test agentListEmailAttachments', () async {
      // TODO
    });

    // List scoped email drafts for an agent
    //
    // Lists draft previews for one scoped inbox.
    //
    //Future<PageEmailDraftProjection> agentListEmailDrafts(String inboxId, { int page, int size, String sort }) async
    test('test agentListEmailDrafts', () async {
      // TODO
    });

    // List scoped inbox emails for an agent
    //
    // Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.
    //
    //Future<PageEmailPreview> agentListInboxEmails(String inboxId, { int page, int size, String sort, DateTime since, DateTime before, bool syncConnectors }) async
    test('test agentListInboxEmails', () async {
      // TODO
    });

    // List scoped inbox threads for an agent
    //
    // Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.
    //
    //Future<PageEmailThreadProjection> agentListInboxThreads(String inboxId, { int page, int size, String sort, String search, DateTime since, DateTime before }) async
    test('test agentListInboxThreads', () async {
      // TODO
    });

    // List active SMS conversations
    //
    //Future<AgentSmsConversationCursorPageDto> agentListSmsConversations({ String workflowState, String outcome, String reviewStatus, String phoneNumberId, bool unread, bool hasMedia, DateTime since, DateTime before, String search, String sort, String cursor, int size }) async
    test('test agentListSmsConversations', () async {
      // TODO
    });

    // Prepare a guarded reply draft
    //
    // Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.
    //
    //Future<AgentPreparedReplyDto> agentPrepareWorkItemReply(String conversationId, PrepareAgentReplyOptions prepareAgentReplyOptions) async
    test('test agentPrepareWorkItemReply', () async {
      // TODO
    });

    // Release a conversation claim
    //
    // Release is idempotent; repeating it does not fail.
    //
    //Future agentReleaseConversationClaim(String conversationId, String claimId) async
    test('test agentReleaseConversationClaim', () async {
      // TODO
    });

    // Release an SMS conversation claim
    //
    //Future agentReleaseSmsClaim(String conversationId, String claimId) async
    test('test agentReleaseSmsClaim', () async {
      // TODO
    });

    // Renew a conversation claim
    //
    //Future<AgentConversationClaimDto> agentRenewConversationClaim(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions) async
    test('test agentRenewConversationClaim', () async {
      // TODO
    });

    // Renew an SMS conversation claim
    //
    //Future<AgentConversationClaimDto> agentRenewSmsClaim(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions) async
    test('test agentRenewSmsClaim', () async {
      // TODO
    });

    // Reply to a scoped email as an agent
    //
    // Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.
    //
    //Future<SentEmailDto> agentReplyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions, { String idempotencyKey, int expectedConversationVersion, String expectedLatestEmailId }) async
    test('test agentReplyToEmail', () async {
      // TODO
    });

    // Reply to received SMS
    //
    //Future<SentSmsDto> agentReplyToSms(String phoneNumberId, String smsId, SmsReplyOptions smsReplyOptions, { String idempotencyKey, int expectedConversationVersion, String expectedLatestMessageId }) async
    test('test agentReplyToSms', () async {
      // TODO
    });

    // Report a worker heartbeat
    //
    // Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.
    //
    //Future<AgentWorkerHeartbeatDto> agentReportWorkerHeartbeat(AgentWorkerHeartbeatOptions agentWorkerHeartbeatOptions) async
    test('test agentReportWorkerHeartbeat', () async {
      // TODO
    });

    // Request human review for a conversation
    //
    // Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.
    //
    //Future<AgentConversationHandoffDto> agentRequestConversationHandoff(String conversationId, CreateAgentConversationHandoffOptions createAgentConversationHandoffOptions) async
    test('test agentRequestConversationHandoff', () async {
      // TODO
    });

    // Request human review for an SMS conversation
    //
    //Future<AgentConversationHandoffDto> agentRequestSmsHandoff(String conversationId, CreateAgentSmsConversationHandoffOptions createAgentSmsConversationHandoffOptions) async
    test('test agentRequestSmsHandoff', () async {
      // TODO
    });

    // Search scoped inbox emails for an agent
    //
    // Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.
    //
    //Future<List<EmailPreview>> agentSearchInboxEmails(String inboxId, MatchOptions matchOptions, { int size, String sort, DateTime since, DateTime before, bool unreadOnly }) async
    test('test agentSearchInboxEmails', () async {
      // TODO
    });

    // Send a scoped email draft for an agent
    //
    // Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.
    //
    //Future<SentEmailDto> agentSendEmailDraft(String inboxId, String draftId, { String idempotencyKey }) async
    test('test agentSendEmailDraft', () async {
      // TODO
    });

    // Send SMS from an assigned phone number
    //
    //Future<SentSmsDto> agentSendSms(String phoneNumberId, SmsSendOptions smsSendOptions, { String idempotencyKey, int expectedConversationVersion, String expectedLatestMessageId }) async
    test('test agentSendSms', () async {
      // TODO
    });

    // Update a scoped email draft for an agent
    //
    // Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.
    //
    //Future<EmailDraftDto> agentUpdateEmailDraft(String inboxId, String draftId, SendEmailOptions sendEmailOptions) async
    test('test agentUpdateEmailDraft', () async {
      // TODO
    });

    // Update an inbox visible to an inbox-manager connection
    //
    //Future<InboxDto> agentUpdateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async
    test('test agentUpdateInbox', () async {
      // TODO
    });

    // Update an agent-managed TOTP device
    //
    //Future<TotpDeviceDto> agentUpdateTotpDevice(String id, UpdateTotpDeviceOptions updateTotpDeviceOptions) async
    test('test agentUpdateTotpDevice', () async {
      // TODO
    });

  });
}
