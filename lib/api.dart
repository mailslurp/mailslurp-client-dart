//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/alias_controller_api.dart';
part 'api/api_user_controller_api.dart';
part 'api/attachment_controller_api.dart';
part 'api/bounce_controller_api.dart';
part 'api/bulk_actions_controller_api.dart';
part 'api/common_actions_controller_api.dart';
part 'api/contact_controller_api.dart';
part 'api/domain_controller_api.dart';
part 'api/email_controller_api.dart';
part 'api/email_verification_controller_api.dart';
part 'api/expired_controller_api.dart';
part 'api/export_controller_api.dart';
part 'api/form_controller_api.dart';
part 'api/group_controller_api.dart';
part 'api/inbox_controller_api.dart';
part 'api/inbox_forwarder_controller_api.dart';
part 'api/inbox_ruleset_controller_api.dart';
part 'api/mail_server_controller_api.dart';
part 'api/missed_email_controller_api.dart';
part 'api/phone_controller_api.dart';
part 'api/sent_emails_controller_api.dart';
part 'api/sms_controller_api.dart';
part 'api/template_controller_api.dart';
part 'api/tracking_controller_api.dart';
part 'api/wait_for_controller_api.dart';
part 'api/webhook_controller_api.dart';

part 'model/abstract_webhook_payload.dart';
part 'model/alias_dto.dart';
part 'model/alias_projection.dart';
part 'model/attachment_entity.dart';
part 'model/attachment_meta_data.dart';
part 'model/attachment_projection.dart';
part 'model/basic_auth_options.dart';
part 'model/bounce_projection.dart';
part 'model/bounce_recipient_projection.dart';
part 'model/bounced_email_dto.dart';
part 'model/bounced_recipient_dto.dart';
part 'model/bulk_send_email_options.dart';
part 'model/complaint.dart';
part 'model/condition_option.dart';
part 'model/contact_dto.dart';
part 'model/contact_projection.dart';
part 'model/content_match_options.dart';
part 'model/count_dto.dart';
part 'model/create_alias_options.dart';
part 'model/create_contact_options.dart';
part 'model/create_domain_options.dart';
part 'model/create_emergency_address_options.dart';
part 'model/create_group_options.dart';
part 'model/create_inbox_dto.dart';
part 'model/create_inbox_forwarder_options.dart';
part 'model/create_inbox_ruleset_options.dart';
part 'model/create_template_options.dart';
part 'model/create_tracking_pixel_options.dart';
part 'model/create_webhook_options.dart';
part 'model/dns_lookup_options.dart';
part 'model/dns_lookup_result.dart';
part 'model/dns_lookup_results.dart';
part 'model/delivery_status.dart';
part 'model/describe_domain_options.dart';
part 'model/describe_mail_server_domain_result.dart';
part 'model/domain_dto.dart';
part 'model/domain_name_record.dart';
part 'model/domain_preview.dart';
part 'model/download_attachment_dto.dart';
part 'model/email.dart';
part 'model/email_analysis.dart';
part 'model/email_content_match_result.dart';
part 'model/email_html_dto.dart';
part 'model/email_links_result.dart';
part 'model/email_preview.dart';
part 'model/email_preview_urls.dart';
part 'model/email_projection.dart';
part 'model/email_recipients.dart';
part 'model/email_text_lines_result.dart';
part 'model/email_validation_request.dart';
part 'model/email_verification_result.dart';
part 'model/emergency_address.dart';
part 'model/emergency_address_dto.dart';
part 'model/empty_response_dto.dart';
part 'model/expiration_defaults.dart';
part 'model/expired_inbox_dto.dart';
part 'model/expired_inbox_record_projection.dart';
part 'model/export_link.dart';
part 'model/export_options.dart';
part 'model/filter_bounced_recipients_options.dart';
part 'model/filter_bounced_recipients_result.dart';
part 'model/flush_expired_inboxes_result.dart';
part 'model/forward_email_options.dart';
part 'model/gravatar_url.dart';
part 'model/group_contacts_dto.dart';
part 'model/group_dto.dart';
part 'model/group_projection.dart';
part 'model/html_validation_result.dart';
part 'model/ip_address_result.dart';
part 'model/imap_flag_operation_options.dart';
part 'model/imap_smtp_access_details.dart';
part 'model/inbox_by_email_address_result.dart';
part 'model/inbox_by_name_result.dart';
part 'model/inbox_dto.dart';
part 'model/inbox_exists_dto.dart';
part 'model/inbox_forwarder_dto.dart';
part 'model/inbox_forwarder_test_options.dart';
part 'model/inbox_forwarder_test_result.dart';
part 'model/inbox_id_item.dart';
part 'model/inbox_ids_result.dart';
part 'model/inbox_preview.dart';
part 'model/inbox_ruleset_dto.dart';
part 'model/inbox_ruleset_test_options.dart';
part 'model/inbox_ruleset_test_result.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/json_schema_dto.dart';
part 'model/match_option.dart';
part 'model/match_options.dart';
part 'model/missed_email.dart';
part 'model/missed_email_projection.dart';
part 'model/name_server_record.dart';
part 'model/organization_inbox_projection.dart';
part 'model/page_alias.dart';
part 'model/page_attachment_entity.dart';
part 'model/page_bounced_email.dart';
part 'model/page_bounced_recipients.dart';
part 'model/page_complaint.dart';
part 'model/page_contact_projection.dart';
part 'model/page_delivery_status.dart';
part 'model/page_email_preview.dart';
part 'model/page_email_projection.dart';
part 'model/page_email_validation_request.dart';
part 'model/page_expired_inbox_record_projection.dart';
part 'model/page_group_projection.dart';
part 'model/page_inbox_forwarder_dto.dart';
part 'model/page_inbox_projection.dart';
part 'model/page_inbox_ruleset_dto.dart';
part 'model/page_missed_email_projection.dart';
part 'model/page_organization_inbox_projection.dart';
part 'model/page_phone_number_projection.dart';
part 'model/page_sent_email_projection.dart';
part 'model/page_sent_email_with_queue_projection.dart';
part 'model/page_sms_projection.dart';
part 'model/page_template_projection.dart';
part 'model/page_thread_projection.dart';
part 'model/page_tracking_pixel_projection.dart';
part 'model/page_unknown_missed_email_projection.dart';
part 'model/page_webhook_projection.dart';
part 'model/page_webhook_result.dart';
part 'model/pageable_object.dart';
part 'model/phone_number_dto.dart';
part 'model/phone_number_projection.dart';
part 'model/phone_plan_dto.dart';
part 'model/raw_email_json.dart';
part 'model/recipient.dart';
part 'model/reply_to_alias_email_options.dart';
part 'model/reply_to_email_options.dart';
part 'model/send_email_options.dart';
part 'model/send_smtp_envelope_options.dart';
part 'model/send_with_queue_result.dart';
part 'model/sender.dart';
part 'model/sent_email_dto.dart';
part 'model/sent_email_projection.dart';
part 'model/set_inbox_favourited_options.dart';
part 'model/simple_send_email_options.dart';
part 'model/sms_match_option.dart';
part 'model/sms_message.dart';
part 'model/sms_preview.dart';
part 'model/sms_projection.dart';
part 'model/sort.dart';
part 'model/template_dto.dart';
part 'model/template_preview.dart';
part 'model/template_projection.dart';
part 'model/template_variable.dart';
part 'model/test_new_inbox_forwarder_options.dart';
part 'model/test_new_inbox_ruleset_options.dart';
part 'model/thread_projection.dart';
part 'model/tracking_pixel_dto.dart';
part 'model/tracking_pixel_projection.dart';
part 'model/unknown_missed_email_projection.dart';
part 'model/unread_count.dart';
part 'model/unseen_error_count_dto.dart';
part 'model/update_alias_options.dart';
part 'model/update_domain_options.dart';
part 'model/update_group_contacts.dart';
part 'model/update_inbox_options.dart';
part 'model/upload_attachment_options.dart';
part 'model/user_info_dto.dart';
part 'model/validate_email_address_list_options.dart';
part 'model/validate_email_address_list_result.dart';
part 'model/validation_dto.dart';
part 'model/validation_message.dart';
part 'model/verify_email_address_options.dart';
part 'model/verify_webhook_signature_options.dart';
part 'model/verify_webhook_signature_results.dart';
part 'model/wait_for_conditions.dart';
part 'model/wait_for_sms_conditions.dart';
part 'model/webhook_bounce_payload.dart';
part 'model/webhook_bounce_recipient_payload.dart';
part 'model/webhook_dto.dart';
part 'model/webhook_email_opened_payload.dart';
part 'model/webhook_email_read_payload.dart';
part 'model/webhook_header_name_value.dart';
part 'model/webhook_headers.dart';
part 'model/webhook_new_attachment_payload.dart';
part 'model/webhook_new_contact_payload.dart';
part 'model/webhook_new_email_payload.dart';
part 'model/webhook_projection.dart';
part 'model/webhook_redrive_result.dart';
part 'model/webhook_result_dto.dart';
part 'model/webhook_test_request.dart';
part 'model/webhook_test_response.dart';
part 'model/webhook_test_result.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
