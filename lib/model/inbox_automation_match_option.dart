//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxAutomationMatchOption {
  /// Returns a new [InboxAutomationMatchOption] instance.
  InboxAutomationMatchOption({
    required this.field,
    required this.should,
    required this.value,
  });

  /// Supported fields for inbox forwarder and replier automation matching.
  InboxAutomationMatchOptionFieldEnum field;

  /// Comparison mode for inbox automation matching.
  InboxAutomationMatchOptionShouldEnum should;

  /// Pattern or value to compare against the selected field.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxAutomationMatchOption &&
     other.field == field &&
     other.should == should &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (should.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'InboxAutomationMatchOption[field=$field, should=$should, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'should'] = this.should;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [InboxAutomationMatchOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxAutomationMatchOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxAutomationMatchOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxAutomationMatchOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxAutomationMatchOption(
        field: InboxAutomationMatchOptionFieldEnum.fromJson(json[r'field'])!,
        should: InboxAutomationMatchOptionShouldEnum.fromJson(json[r'should'])!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<InboxAutomationMatchOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxAutomationMatchOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxAutomationMatchOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxAutomationMatchOption> mapFromJson(dynamic json) {
    final map = <String, InboxAutomationMatchOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxAutomationMatchOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxAutomationMatchOption-objects as value to a dart map
  static Map<String, List<InboxAutomationMatchOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxAutomationMatchOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxAutomationMatchOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'should',
    'value',
  };
}

/// Supported fields for inbox forwarder and replier automation matching.
class InboxAutomationMatchOptionFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxAutomationMatchOptionFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = InboxAutomationMatchOptionFieldEnum._(r'RECIPIENTS');
  static const SENDER = InboxAutomationMatchOptionFieldEnum._(r'SENDER');
  static const SUBJECT = InboxAutomationMatchOptionFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = InboxAutomationMatchOptionFieldEnum._(r'ATTACHMENTS');
  static const ATTACHMENT_FILENAME = InboxAutomationMatchOptionFieldEnum._(r'ATTACHMENT_FILENAME');
  static const ATTACHMENT_TEXT = InboxAutomationMatchOptionFieldEnum._(r'ATTACHMENT_TEXT');

  /// List of all possible values in this [enum][InboxAutomationMatchOptionFieldEnum].
  static const values = <InboxAutomationMatchOptionFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
    ATTACHMENT_FILENAME,
    ATTACHMENT_TEXT,
  ];

  static InboxAutomationMatchOptionFieldEnum? fromJson(dynamic value) => InboxAutomationMatchOptionFieldEnumTypeTransformer().decode(value);

  static List<InboxAutomationMatchOptionFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxAutomationMatchOptionFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxAutomationMatchOptionFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxAutomationMatchOptionFieldEnum] to String,
/// and [decode] dynamic data back to [InboxAutomationMatchOptionFieldEnum].
class InboxAutomationMatchOptionFieldEnumTypeTransformer {
  factory InboxAutomationMatchOptionFieldEnumTypeTransformer() => _instance ??= const InboxAutomationMatchOptionFieldEnumTypeTransformer._();

  const InboxAutomationMatchOptionFieldEnumTypeTransformer._();

  String encode(InboxAutomationMatchOptionFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxAutomationMatchOptionFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxAutomationMatchOptionFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return InboxAutomationMatchOptionFieldEnum.RECIPIENTS;
        case r'SENDER': return InboxAutomationMatchOptionFieldEnum.SENDER;
        case r'SUBJECT': return InboxAutomationMatchOptionFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return InboxAutomationMatchOptionFieldEnum.ATTACHMENTS;
        case r'ATTACHMENT_FILENAME': return InboxAutomationMatchOptionFieldEnum.ATTACHMENT_FILENAME;
        case r'ATTACHMENT_TEXT': return InboxAutomationMatchOptionFieldEnum.ATTACHMENT_TEXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxAutomationMatchOptionFieldEnumTypeTransformer] instance.
  static InboxAutomationMatchOptionFieldEnumTypeTransformer? _instance;
}


/// Comparison mode for inbox automation matching.
class InboxAutomationMatchOptionShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxAutomationMatchOptionShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WILDCARD = InboxAutomationMatchOptionShouldEnum._(r'WILDCARD');
  static const MATCH = InboxAutomationMatchOptionShouldEnum._(r'MATCH');
  static const CONTAIN = InboxAutomationMatchOptionShouldEnum._(r'CONTAIN');
  static const EQUAL = InboxAutomationMatchOptionShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][InboxAutomationMatchOptionShouldEnum].
  static const values = <InboxAutomationMatchOptionShouldEnum>[
    WILDCARD,
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static InboxAutomationMatchOptionShouldEnum? fromJson(dynamic value) => InboxAutomationMatchOptionShouldEnumTypeTransformer().decode(value);

  static List<InboxAutomationMatchOptionShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxAutomationMatchOptionShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxAutomationMatchOptionShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxAutomationMatchOptionShouldEnum] to String,
/// and [decode] dynamic data back to [InboxAutomationMatchOptionShouldEnum].
class InboxAutomationMatchOptionShouldEnumTypeTransformer {
  factory InboxAutomationMatchOptionShouldEnumTypeTransformer() => _instance ??= const InboxAutomationMatchOptionShouldEnumTypeTransformer._();

  const InboxAutomationMatchOptionShouldEnumTypeTransformer._();

  String encode(InboxAutomationMatchOptionShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxAutomationMatchOptionShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxAutomationMatchOptionShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WILDCARD': return InboxAutomationMatchOptionShouldEnum.WILDCARD;
        case r'MATCH': return InboxAutomationMatchOptionShouldEnum.MATCH;
        case r'CONTAIN': return InboxAutomationMatchOptionShouldEnum.CONTAIN;
        case r'EQUAL': return InboxAutomationMatchOptionShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxAutomationMatchOptionShouldEnumTypeTransformer] instance.
  static InboxAutomationMatchOptionShouldEnumTypeTransformer? _instance;
}


