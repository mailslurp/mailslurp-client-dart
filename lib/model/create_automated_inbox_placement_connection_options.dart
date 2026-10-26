//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateAutomatedInboxPlacementConnectionOptions {
  /// Returns a new [CreateAutomatedInboxPlacementConnectionOptions] instance.
  CreateAutomatedInboxPlacementConnectionOptions({
    required this.name,
    required this.provider,
    required this.fromEmail,
    this.smtp,
  });

  String name;

  CreateAutomatedInboxPlacementConnectionOptionsProviderEnum provider;

  String fromEmail;

  AutomatedInboxPlacementSmtpOptions? smtp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAutomatedInboxPlacementConnectionOptions &&
     other.name == name &&
     other.provider == provider &&
     other.fromEmail == fromEmail &&
     other.smtp == smtp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (provider.hashCode) +
    (fromEmail.hashCode) +
    (smtp == null ? 0 : smtp!.hashCode);

  @override
  String toString() => 'CreateAutomatedInboxPlacementConnectionOptions[name=$name, provider=$provider, fromEmail=$fromEmail, smtp=$smtp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'provider'] = this.provider;
      json[r'fromEmail'] = this.fromEmail;
    if (this.smtp != null) {
      json[r'smtp'] = this.smtp;
    } else {
      json[r'smtp'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAutomatedInboxPlacementConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAutomatedInboxPlacementConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAutomatedInboxPlacementConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAutomatedInboxPlacementConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAutomatedInboxPlacementConnectionOptions(
        name: mapValueOfType<String>(json, r'name')!,
        provider: CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.fromJson(json[r'provider'])!,
        fromEmail: mapValueOfType<String>(json, r'fromEmail')!,
        smtp: AutomatedInboxPlacementSmtpOptions.fromJson(json[r'smtp']),
      );
    }
    return null;
  }

  static List<CreateAutomatedInboxPlacementConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAutomatedInboxPlacementConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAutomatedInboxPlacementConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAutomatedInboxPlacementConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreateAutomatedInboxPlacementConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAutomatedInboxPlacementConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAutomatedInboxPlacementConnectionOptions-objects as value to a dart map
  static Map<String, List<CreateAutomatedInboxPlacementConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAutomatedInboxPlacementConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAutomatedInboxPlacementConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'provider',
    'fromEmail',
  };
}


class CreateAutomatedInboxPlacementConnectionOptionsProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'SMTP');
  static const AMAZON_SES = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'SENDGRID');
  static const RESEND = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'RESEND');
  static const MAILGUN = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'MAILGUN');
  static const POSTMARK = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][CreateAutomatedInboxPlacementConnectionOptionsProviderEnum].
  static const values = <CreateAutomatedInboxPlacementConnectionOptionsProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static CreateAutomatedInboxPlacementConnectionOptionsProviderEnum? fromJson(dynamic value) => CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer().decode(value);

  static List<CreateAutomatedInboxPlacementConnectionOptionsProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAutomatedInboxPlacementConnectionOptionsProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateAutomatedInboxPlacementConnectionOptionsProviderEnum] to String,
/// and [decode] dynamic data back to [CreateAutomatedInboxPlacementConnectionOptionsProviderEnum].
class CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer {
  factory CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer() => _instance ??= const CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer._();

  const CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer._();

  String encode(CreateAutomatedInboxPlacementConnectionOptionsProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateAutomatedInboxPlacementConnectionOptionsProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.SMTP;
        case r'AMAZON_SES': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.AMAZON_SES;
        case r'SENDGRID': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.SENDGRID;
        case r'RESEND': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.RESEND;
        case r'MAILGUN': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.MAILGUN;
        case r'POSTMARK': return CreateAutomatedInboxPlacementConnectionOptionsProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer] instance.
  static CreateAutomatedInboxPlacementConnectionOptionsProviderEnumTypeTransformer? _instance;
}


