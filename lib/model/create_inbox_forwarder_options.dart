//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxForwarderOptions {
  /// Returns a new [CreateInboxForwarderOptions] instance.
  CreateInboxForwarderOptions({
    required this.field,
    required this.match,
    this.forwardToRecipients = const [],
  });

  /// Field to match against to trigger inbox forwarding for inbound email
  CreateInboxForwarderOptionsFieldEnum field;

  /// String or wildcard style match for field specified when evaluating forwarding rules
  String match;

  /// Email addresses to forward an email to if it matches the field and match criteria of the forwarder
  List<String> forwardToRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxForwarderOptions &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (match.hashCode) +
    (forwardToRecipients.hashCode);

  @override
  String toString() => 'CreateInboxForwarderOptions[field=$field, match=$match, forwardToRecipients=$forwardToRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'match'] = this.match;
      json[r'forwardToRecipients'] = this.forwardToRecipients;
    return json;
  }

  /// Returns a new [CreateInboxForwarderOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxForwarderOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxForwarderOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxForwarderOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxForwarderOptions(
        field: CreateInboxForwarderOptionsFieldEnum.fromJson(json[r'field'])!,
        match: mapValueOfType<String>(json, r'match')!,
        forwardToRecipients: json[r'forwardToRecipients'] is List
            ? (json[r'forwardToRecipients'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<CreateInboxForwarderOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxForwarderOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxForwarderOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxForwarderOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxForwarderOptions-objects as value to a dart map
  static Map<String, List<CreateInboxForwarderOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxForwarderOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxForwarderOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'match',
    'forwardToRecipients',
  };
}

/// Field to match against to trigger inbox forwarding for inbound email
class CreateInboxForwarderOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxForwarderOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = CreateInboxForwarderOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = CreateInboxForwarderOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = CreateInboxForwarderOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = CreateInboxForwarderOptionsFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][CreateInboxForwarderOptionsFieldEnum].
  static const values = <CreateInboxForwarderOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static CreateInboxForwarderOptionsFieldEnum? fromJson(dynamic value) => CreateInboxForwarderOptionsFieldEnumTypeTransformer().decode(value);

  static List<CreateInboxForwarderOptionsFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptionsFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptionsFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxForwarderOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxForwarderOptionsFieldEnum].
class CreateInboxForwarderOptionsFieldEnumTypeTransformer {
  factory CreateInboxForwarderOptionsFieldEnumTypeTransformer() => _instance ??= const CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  const CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  String encode(CreateInboxForwarderOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxForwarderOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxForwarderOptionsFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return CreateInboxForwarderOptionsFieldEnum.RECIPIENTS;
        case r'SENDER': return CreateInboxForwarderOptionsFieldEnum.SENDER;
        case r'SUBJECT': return CreateInboxForwarderOptionsFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return CreateInboxForwarderOptionsFieldEnum.ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxForwarderOptionsFieldEnumTypeTransformer] instance.
  static CreateInboxForwarderOptionsFieldEnumTypeTransformer? _instance;
}


