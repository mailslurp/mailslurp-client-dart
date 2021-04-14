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
part 'api/attachment_controller_api.dart';
part 'api/bulk_actions_controller_api.dart';
part 'api/common_actions_controller_api.dart';
part 'api/contact_controller_api.dart';
part 'api/domain_controller_api.dart';
part 'api/email_controller_api.dart';
part 'api/expired_controller_api.dart';
part 'api/form_controller_api.dart';
part 'api/group_controller_api.dart';
part 'api/inbox_controller_api.dart';
part 'api/mail_server_controller_api.dart';
part 'api/sent_emails_controller_api.dart';
part 'api/template_controller_api.dart';
part 'api/wait_for_controller_api.dart';
part 'api/webhook_controller_api.dart';

part 'model/alias.dart';
part 'model/alias_dto.dart';
part 'model/alias_projection.dart';
part 'model/attachment_meta_data.dart';
part 'model/basic_auth_options.dart';
part 'model/bulk_send_email_options.dart';
part 'model/contact_dto.dart';
part 'model/contact_projection.dart';
part 'model/content_match_options.dart';
part 'model/create_alias_options.dart';
part 'model/create_contact_options.dart';
part 'model/create_domain_options.dart';
part 'model/create_group_options.dart';
part 'model/create_inbox_dto.dart';
part 'model/create_template_options.dart';
part 'model/create_webhook_options.dart';
part 'model/dns_lookup_options.dart';
part 'model/dns_lookup_result.dart';
part 'model/dns_lookup_results.dart';
part 'model/describe_domain_options.dart';
part 'model/describe_mail_server_domain_result.dart';
part 'model/domain_dto.dart';
part 'model/domain_name_record.dart';
part 'model/domain_preview.dart';
part 'model/download_attachment_dto.dart';
part 'model/email.dart';
part 'model/email_analysis.dart';
part 'model/email_content_match_result.dart';
part 'model/email_preview.dart';
part 'model/email_projection.dart';
part 'model/email_text_lines_result.dart';
part 'model/email_verification_result.dart';
part 'model/expiration_defaults.dart';
part 'model/expired_inbox_dto.dart';
part 'model/expired_inbox_record_projection.dart';
part 'model/forward_email_options.dart';
part 'model/group_contacts_dto.dart';
part 'model/group_dto.dart';
part 'model/group_projection.dart';
part 'model/html_validation_result.dart';
part 'model/ip_address_result.dart';
part 'model/inbox.dart';
part 'model/inbox_projection.dart';
part 'model/match_option.dart';
part 'model/match_options.dart';
part 'model/name_server_record.dart';
part 'model/organization_inbox_projection.dart';
part 'model/page_alias.dart';
part 'model/page_contact_projection.dart';
part 'model/page_email_preview.dart';
part 'model/page_email_projection.dart';
part 'model/page_expired_inbox_record_projection.dart';
part 'model/page_group_projection.dart';
part 'model/page_inbox_projection.dart';
part 'model/page_organization_inbox_projection.dart';
part 'model/page_sent_email_projection.dart';
part 'model/page_template_projection.dart';
part 'model/page_thread_projection.dart';
part 'model/page_webhook_projection.dart';
part 'model/pageable.dart';
part 'model/raw_email_json.dart';
part 'model/reply_to_alias_email_options.dart';
part 'model/reply_to_email_options.dart';
part 'model/send_email_options.dart';
part 'model/sent_email_dto.dart';
part 'model/sent_email_projection.dart';
part 'model/set_inbox_favourited_options.dart';
part 'model/simple_send_email_options.dart';
part 'model/sort.dart';
part 'model/template_dto.dart';
part 'model/template_projection.dart';
part 'model/template_variable.dart';
part 'model/thread_projection.dart';
part 'model/unread_count.dart';
part 'model/update_alias_options.dart';
part 'model/update_domain_options.dart';
part 'model/update_group_contacts.dart';
part 'model/update_inbox_options.dart';
part 'model/upload_attachment_options.dart';
part 'model/validation_dto.dart';
part 'model/validation_message.dart';
part 'model/verify_email_address_options.dart';
part 'model/wait_for_conditions.dart';
part 'model/webhook_dto.dart';
part 'model/webhook_projection.dart';
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
