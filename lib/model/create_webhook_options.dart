//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateWebhookOptions {
  /// Returns a new [CreateWebhookOptions] instance.
  CreateWebhookOptions({
    required this.url,
    this.basicAuth,
    this.name,
    this.eventName,
    this.includeHeaders,
    this.requestBodyTemplate,
    this.useStaticIpRange = false,
    this.ignoreInsecureSslCertificates,
    this.tags = const [],
  });

  /// Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation.
  String url;

  BasicAuthOptions? basicAuth;

  /// Optional name for the webhook
  String? name;

  /// Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
  CreateWebhookOptionsEventNameEnum? eventName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebhookHeaders? includeHeaders;

  /// Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style `{{variableName}}` templating to use parts of the standard webhook payload for the given event.
  String? requestBodyTemplate;

  /// Use static IP range when calling webhook endpoint
  bool? useStaticIpRange;

  /// Ignore insecure SSL certificates when sending request. Useful for self-signed certs.
  bool? ignoreInsecureSslCertificates;

  /// Optional list of tags
  List<String>? tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWebhookOptions &&
     other.url == url &&
     other.basicAuth == basicAuth &&
     other.name == name &&
     other.eventName == eventName &&
     other.includeHeaders == includeHeaders &&
     other.requestBodyTemplate == requestBodyTemplate &&
     other.useStaticIpRange == useStaticIpRange &&
     other.ignoreInsecureSslCertificates == ignoreInsecureSslCertificates &&
     other.tags == tags;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (basicAuth == null ? 0 : basicAuth!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (eventName == null ? 0 : eventName!.hashCode) +
    (includeHeaders == null ? 0 : includeHeaders!.hashCode) +
    (requestBodyTemplate == null ? 0 : requestBodyTemplate!.hashCode) +
    (useStaticIpRange == null ? 0 : useStaticIpRange!.hashCode) +
    (ignoreInsecureSslCertificates == null ? 0 : ignoreInsecureSslCertificates!.hashCode) +
    (tags == null ? 0 : tags!.hashCode);

  @override
  String toString() => 'CreateWebhookOptions[url=$url, basicAuth=$basicAuth, name=$name, eventName=$eventName, includeHeaders=$includeHeaders, requestBodyTemplate=$requestBodyTemplate, useStaticIpRange=$useStaticIpRange, ignoreInsecureSslCertificates=$ignoreInsecureSslCertificates, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
    if (this.basicAuth != null) {
      json[r'basicAuth'] = this.basicAuth;
    } else {
      json[r'basicAuth'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
    }
    if (this.includeHeaders != null) {
      json[r'includeHeaders'] = this.includeHeaders;
    } else {
      json[r'includeHeaders'] = null;
    }
    if (this.requestBodyTemplate != null) {
      json[r'requestBodyTemplate'] = this.requestBodyTemplate;
    } else {
      json[r'requestBodyTemplate'] = null;
    }
    if (this.useStaticIpRange != null) {
      json[r'useStaticIpRange'] = this.useStaticIpRange;
    } else {
      json[r'useStaticIpRange'] = null;
    }
    if (this.ignoreInsecureSslCertificates != null) {
      json[r'ignoreInsecureSslCertificates'] = this.ignoreInsecureSslCertificates;
    } else {
      json[r'ignoreInsecureSslCertificates'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
    }
    return json;
  }

  /// Returns a new [CreateWebhookOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWebhookOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateWebhookOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateWebhookOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWebhookOptions(
        url: mapValueOfType<String>(json, r'url')!,
        basicAuth: BasicAuthOptions.fromJson(json[r'basicAuth']),
        name: mapValueOfType<String>(json, r'name'),
        eventName: CreateWebhookOptionsEventNameEnum.fromJson(json[r'eventName']),
        includeHeaders: WebhookHeaders.fromJson(json[r'includeHeaders']),
        requestBodyTemplate: mapValueOfType<String>(json, r'requestBodyTemplate'),
        useStaticIpRange: mapValueOfType<bool>(json, r'useStaticIpRange') ?? false,
        ignoreInsecureSslCertificates: mapValueOfType<bool>(json, r'ignoreInsecureSslCertificates'),
        tags: json[r'tags'] is List
            ? (json[r'tags'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateWebhookOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWebhookOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWebhookOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWebhookOptions> mapFromJson(dynamic json) {
    final map = <String, CreateWebhookOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWebhookOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookOptions-objects as value to a dart map
  static Map<String, List<CreateWebhookOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWebhookOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWebhookOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
  };
}

/// Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
class CreateWebhookOptionsEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateWebhookOptionsEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = CreateWebhookOptionsEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = CreateWebhookOptionsEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = CreateWebhookOptionsEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = CreateWebhookOptionsEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = CreateWebhookOptionsEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = CreateWebhookOptionsEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = CreateWebhookOptionsEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = CreateWebhookOptionsEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = CreateWebhookOptionsEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = CreateWebhookOptionsEventNameEnum._(r'NEW_SMS');
  static const NEW_GUEST_USER = CreateWebhookOptionsEventNameEnum._(r'NEW_GUEST_USER');

  /// List of all possible values in this [enum][CreateWebhookOptionsEventNameEnum].
  static const values = <CreateWebhookOptionsEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    DELIVERY_STATUS,
    BOUNCE,
    BOUNCE_RECIPIENT,
    NEW_SMS,
    NEW_GUEST_USER,
  ];

  static CreateWebhookOptionsEventNameEnum? fromJson(dynamic value) => CreateWebhookOptionsEventNameEnumTypeTransformer().decode(value);

  static List<CreateWebhookOptionsEventNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWebhookOptionsEventNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWebhookOptionsEventNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateWebhookOptionsEventNameEnum] to String,
/// and [decode] dynamic data back to [CreateWebhookOptionsEventNameEnum].
class CreateWebhookOptionsEventNameEnumTypeTransformer {
  factory CreateWebhookOptionsEventNameEnumTypeTransformer() => _instance ??= const CreateWebhookOptionsEventNameEnumTypeTransformer._();

  const CreateWebhookOptionsEventNameEnumTypeTransformer._();

  String encode(CreateWebhookOptionsEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateWebhookOptionsEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateWebhookOptionsEventNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_RECEIVED': return CreateWebhookOptionsEventNameEnum.EMAIL_RECEIVED;
        case r'NEW_EMAIL': return CreateWebhookOptionsEventNameEnum.NEW_EMAIL;
        case r'NEW_CONTACT': return CreateWebhookOptionsEventNameEnum.NEW_CONTACT;
        case r'NEW_ATTACHMENT': return CreateWebhookOptionsEventNameEnum.NEW_ATTACHMENT;
        case r'EMAIL_OPENED': return CreateWebhookOptionsEventNameEnum.EMAIL_OPENED;
        case r'EMAIL_READ': return CreateWebhookOptionsEventNameEnum.EMAIL_READ;
        case r'DELIVERY_STATUS': return CreateWebhookOptionsEventNameEnum.DELIVERY_STATUS;
        case r'BOUNCE': return CreateWebhookOptionsEventNameEnum.BOUNCE;
        case r'BOUNCE_RECIPIENT': return CreateWebhookOptionsEventNameEnum.BOUNCE_RECIPIENT;
        case r'NEW_SMS': return CreateWebhookOptionsEventNameEnum.NEW_SMS;
        case r'NEW_GUEST_USER': return CreateWebhookOptionsEventNameEnum.NEW_GUEST_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateWebhookOptionsEventNameEnumTypeTransformer] instance.
  static CreateWebhookOptionsEventNameEnumTypeTransformer? _instance;
}


