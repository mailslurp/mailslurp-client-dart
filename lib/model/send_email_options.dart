//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendEmailOptions {
  /// Returns a new [SendEmailOptions] instance.
  SendEmailOptions({
    this.toContacts = const [],
    this.toGroup,
    this.to = const [],
    this.from,
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.replyTo,
    this.body,
    this.html,
    this.isHTML,
    this.charset,
    this.attachments = const [],
    this.templateVariables = const {},
    this.template,
    this.sendStrategy,
    this.useInboxName,
    this.addTrackingPixel,
    this.filterBouncedRecipients,
    this.validateEmailAddresses,
  });

  /// Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
  List<String>? toContacts;

  /// Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
  String? toGroup;

  /// List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing.
  List<String>? to;

  /// Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. If you set `useInboxName` to `true` the from field will include the inbox name as a display name: `inbox_name <inbox@address.com>`. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used.
  String? from;

  /// Optional list of cc destination email addresses
  List<String>? cc;

  /// Optional list of bcc destination email addresses
  List<String>? bcc;

  /// Optional email subject line
  String? subject;

  /// Optional replyTo header
  String? replyTo;

  /// Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
  String? body;

  /// Optional HTML flag to indicate that contents is HTML. Set's a `content-type: text/html` for email. (Deprecated: use `isHTML` instead.)
  bool? html;

  /// Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
  bool? isHTML;

  /// Optional charset
  String? charset;

  /// Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support `multi-part form`, `base64 file encoding`, and octet stream binary uploads. See the `UploadController` for available methods. 
  List<String>? attachments;

  /// Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
  Map<String, Object>? templateVariables;

  /// Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
  String? template;

  /// How an email should be sent based on its recipients
  SendEmailOptionsSendStrategyEnum? sendStrategy;

  /// Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>` if the inbox has a name.
  bool? useInboxName;

  /// Add tracking pixel to email
  bool? addTrackingPixel;

  /// Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
  bool? filterBouncedRecipients;

  /// Validate recipient email addresses before sending
  SendEmailOptionsValidateEmailAddressesEnum? validateEmailAddresses;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendEmailOptions &&
     other.toContacts == toContacts &&
     other.toGroup == toGroup &&
     other.to == to &&
     other.from == from &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.subject == subject &&
     other.replyTo == replyTo &&
     other.body == body &&
     other.html == html &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.attachments == attachments &&
     other.templateVariables == templateVariables &&
     other.template == template &&
     other.sendStrategy == sendStrategy &&
     other.useInboxName == useInboxName &&
     other.addTrackingPixel == addTrackingPixel &&
     other.filterBouncedRecipients == filterBouncedRecipients &&
     other.validateEmailAddresses == validateEmailAddresses;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (toContacts == null ? 0 : toContacts!.hashCode) +
    (toGroup == null ? 0 : toGroup!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (bcc == null ? 0 : bcc!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (replyTo == null ? 0 : replyTo!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (isHTML == null ? 0 : isHTML!.hashCode) +
    (charset == null ? 0 : charset!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (templateVariables == null ? 0 : templateVariables!.hashCode) +
    (template == null ? 0 : template!.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy!.hashCode) +
    (useInboxName == null ? 0 : useInboxName!.hashCode) +
    (addTrackingPixel == null ? 0 : addTrackingPixel!.hashCode) +
    (filterBouncedRecipients == null ? 0 : filterBouncedRecipients!.hashCode) +
    (validateEmailAddresses == null ? 0 : validateEmailAddresses!.hashCode);

  @override
  String toString() => 'SendEmailOptions[toContacts=$toContacts, toGroup=$toGroup, to=$to, from=$from, cc=$cc, bcc=$bcc, subject=$subject, replyTo=$replyTo, body=$body, html=$html, isHTML=$isHTML, charset=$charset, attachments=$attachments, templateVariables=$templateVariables, template=$template, sendStrategy=$sendStrategy, useInboxName=$useInboxName, addTrackingPixel=$addTrackingPixel, filterBouncedRecipients=$filterBouncedRecipients, validateEmailAddresses=$validateEmailAddresses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.toContacts != null) {
      json[r'toContacts'] = this.toContacts;
    } else {
      json[r'toContacts'] = null;
    }
    if (this.toGroup != null) {
      json[r'toGroup'] = this.toGroup;
    } else {
      json[r'toGroup'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.cc != null) {
      json[r'cc'] = this.cc;
    } else {
      json[r'cc'] = null;
    }
    if (this.bcc != null) {
      json[r'bcc'] = this.bcc;
    } else {
      json[r'bcc'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.replyTo != null) {
      json[r'replyTo'] = this.replyTo;
    } else {
      json[r'replyTo'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    if (this.isHTML != null) {
      json[r'isHTML'] = this.isHTML;
    } else {
      json[r'isHTML'] = null;
    }
    if (this.charset != null) {
      json[r'charset'] = this.charset;
    } else {
      json[r'charset'] = null;
    }
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.templateVariables != null) {
      json[r'templateVariables'] = this.templateVariables;
    } else {
      json[r'templateVariables'] = null;
    }
    if (this.template != null) {
      json[r'template'] = this.template;
    } else {
      json[r'template'] = null;
    }
    if (this.sendStrategy != null) {
      json[r'sendStrategy'] = this.sendStrategy;
    } else {
      json[r'sendStrategy'] = null;
    }
    if (this.useInboxName != null) {
      json[r'useInboxName'] = this.useInboxName;
    } else {
      json[r'useInboxName'] = null;
    }
    if (this.addTrackingPixel != null) {
      json[r'addTrackingPixel'] = this.addTrackingPixel;
    } else {
      json[r'addTrackingPixel'] = null;
    }
    if (this.filterBouncedRecipients != null) {
      json[r'filterBouncedRecipients'] = this.filterBouncedRecipients;
    } else {
      json[r'filterBouncedRecipients'] = null;
    }
    if (this.validateEmailAddresses != null) {
      json[r'validateEmailAddresses'] = this.validateEmailAddresses;
    } else {
      json[r'validateEmailAddresses'] = null;
    }
    return json;
  }

  /// Returns a new [SendEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendEmailOptions(
        toContacts: json[r'toContacts'] is List
            ? (json[r'toContacts'] as List).cast<String>()
            : const [],
        toGroup: mapValueOfType<String>(json, r'toGroup'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        replyTo: mapValueOfType<String>(json, r'replyTo'),
        body: mapValueOfType<String>(json, r'body'),
        html: mapValueOfType<bool>(json, r'html'),
        isHTML: mapValueOfType<bool>(json, r'isHTML'),
        charset: mapValueOfType<String>(json, r'charset'),
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        templateVariables: mapCastOfType<String, Object>(json, r'templateVariables') ?? const {},
        template: mapValueOfType<String>(json, r'template'),
        sendStrategy: SendEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        useInboxName: mapValueOfType<bool>(json, r'useInboxName'),
        addTrackingPixel: mapValueOfType<bool>(json, r'addTrackingPixel'),
        filterBouncedRecipients: mapValueOfType<bool>(json, r'filterBouncedRecipients'),
        validateEmailAddresses: SendEmailOptionsValidateEmailAddressesEnum.fromJson(json[r'validateEmailAddresses']),
      );
    }
    return null;
  }

  static List<SendEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendEmailOptions> mapFromJson(dynamic json) {
    final map = <String, SendEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendEmailOptions-objects as value to a dart map
  static Map<String, List<SendEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendEmailOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// How an email should be sent based on its recipients
class SendEmailOptionsSendStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const SendEmailOptionsSendStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SINGLE_MESSAGE = SendEmailOptionsSendStrategyEnum._(r'SINGLE_MESSAGE');

  /// List of all possible values in this [enum][SendEmailOptionsSendStrategyEnum].
  static const values = <SendEmailOptionsSendStrategyEnum>[
    SINGLE_MESSAGE,
  ];

  static SendEmailOptionsSendStrategyEnum? fromJson(dynamic value) => SendEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<SendEmailOptionsSendStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendEmailOptionsSendStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailOptionsSendStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [SendEmailOptionsSendStrategyEnum].
class SendEmailOptionsSendStrategyEnumTypeTransformer {
  factory SendEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= const SendEmailOptionsSendStrategyEnumTypeTransformer._();

  const SendEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(SendEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendEmailOptionsSendStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SINGLE_MESSAGE': return SendEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static SendEmailOptionsSendStrategyEnumTypeTransformer? _instance;
}


/// Validate recipient email addresses before sending
class SendEmailOptionsValidateEmailAddressesEnum {
  /// Instantiate a new enum with the provided [value].
  const SendEmailOptionsValidateEmailAddressesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VALIDATE_FILTER_REMOVE_INVALID = SendEmailOptionsValidateEmailAddressesEnum._(r'VALIDATE_FILTER_REMOVE_INVALID');
  static const VALIDATE_ERROR_IF_INVALID = SendEmailOptionsValidateEmailAddressesEnum._(r'VALIDATE_ERROR_IF_INVALID');
  static const NO_VALIDATION = SendEmailOptionsValidateEmailAddressesEnum._(r'NO_VALIDATION');

  /// List of all possible values in this [enum][SendEmailOptionsValidateEmailAddressesEnum].
  static const values = <SendEmailOptionsValidateEmailAddressesEnum>[
    VALIDATE_FILTER_REMOVE_INVALID,
    VALIDATE_ERROR_IF_INVALID,
    NO_VALIDATION,
  ];

  static SendEmailOptionsValidateEmailAddressesEnum? fromJson(dynamic value) => SendEmailOptionsValidateEmailAddressesEnumTypeTransformer().decode(value);

  static List<SendEmailOptionsValidateEmailAddressesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendEmailOptionsValidateEmailAddressesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailOptionsValidateEmailAddressesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendEmailOptionsValidateEmailAddressesEnum] to String,
/// and [decode] dynamic data back to [SendEmailOptionsValidateEmailAddressesEnum].
class SendEmailOptionsValidateEmailAddressesEnumTypeTransformer {
  factory SendEmailOptionsValidateEmailAddressesEnumTypeTransformer() => _instance ??= const SendEmailOptionsValidateEmailAddressesEnumTypeTransformer._();

  const SendEmailOptionsValidateEmailAddressesEnumTypeTransformer._();

  String encode(SendEmailOptionsValidateEmailAddressesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendEmailOptionsValidateEmailAddressesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendEmailOptionsValidateEmailAddressesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VALIDATE_FILTER_REMOVE_INVALID': return SendEmailOptionsValidateEmailAddressesEnum.VALIDATE_FILTER_REMOVE_INVALID;
        case r'VALIDATE_ERROR_IF_INVALID': return SendEmailOptionsValidateEmailAddressesEnum.VALIDATE_ERROR_IF_INVALID;
        case r'NO_VALIDATION': return SendEmailOptionsValidateEmailAddressesEnum.NO_VALIDATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendEmailOptionsValidateEmailAddressesEnumTypeTransformer] instance.
  static SendEmailOptionsValidateEmailAddressesEnumTypeTransformer? _instance;
}


